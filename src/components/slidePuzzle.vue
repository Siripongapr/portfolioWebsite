<template>
  <div
    class="flex justify-center flex-wrap items-center pt-44 pb-"
    style="height: 90vh"
  >
    <div>
      <div class="bg-white text-center text-3xl" style="width: 400px">
        <h1>Sixteen Puzzle</h1>
      </div>
      <div
        class="grid grid-cols-1"
        :class="{ hidden: inputCheck }"
        style="width: 400px"
      >
        <label class="text-center bg-blue-500 text-white" for=""
          >Please Enter Player Name</label
        >
        <input type="text" v-model="playerName" />
        <button @click="isPlayerNameEnter" class="bg-blue-900 text-white">
          confirm
        </button>
      </div>
      <div :class="{ hidden: !inputCheck }">
        <div class="text-center text-2xl bg-white" style="width: 400px">
          {{ currenttime }}
        </div>
        <div
          class="grid grid-cols-1 bg-white"
          style="width: 400px; height: 400px"
        >
          <div
            v-for="(row, rowIndex) in sixteenPuzzle"
            :key="rowIndex"
            class="grid grid-cols-4 border"
          >
            <button
              :disabled="!isButtonDisable"
              @click="moveBlock(rowIndex, colIndex)"
              v-for="(col, colIndex) in row"
              :key="colIndex"
              class="border border-red-500"
            >
              {{ col !== 0 ? col : "" }}
            </button>
          </div>
          <button @click="startGame" v-if="!startPlay">start</button>
          <button @click="resetGame">reset</button>
        </div>
      </div>
    </div>
    <div
      class="grid grid-cols-1 bg-white ml-3"
      style="width: 400px; height: 436px"
      :class="{ hidden: !inputCheck }"
    >
      <div class="text-center">
        <h1>Leader Board</h1>
        <div class="text-black">
          <ul class="overflow-y-scroll h-96">
            <li v-for="(item, index) in keepScore" :key="index">
              <h1>No {{ index + 1 }}: Name {{ item.name }}</h1>
              <p>Times : {{ calculateTime2(item.time) }}</p>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
let sixteenPuzzle = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9, 10, 11, 12],
  [13, 14, 15, 0],
];

let startPlay = null;
let isNow = null;
let currenttime = "";
export default {
  data() {
    return {
      sixteenPuzzle,
      startPlay: null,
      isNow,
      currenttime,
      inputCheck: false,
      playerName: "",
      keepScore: [],
      winnerAt: "",
      isButtonDisable: false,
      apiUrl: "https://slidepuzzle.siripong-apiborrirat.blog/api/data",
    };
  },
  methods: {
    isPlayerNameEnter() {
      this.playerName = this.playerName;
      console.log(this.playerName);
      if (this.playerName !== "") {
        this.inputCheck = true;
      }
    },
    //display time
    displayTime() {
      if (!this.startPlay) {
        if (currenttime != "0 : 0 : 0") return;
        this.currenttime = "0 : 0 : 0";
      } else {
        this.currenttime = this.calculateTime(this.startPlay);
      }
    },
    //start game
    startGame() {
      this.shuffle();
      this.startPlay = new Date();
      this.isButtonDisable = true;
      console.log(this.isButtonDisable);
    },
    //for testing winner condition
    resetGame() {
      this.sixteenPuzzle = [
        [1, 2, 3, 4],
        [5, 6, 7, 8],
        [9, 10, 11, 12],
        [13, 14, 0, 15],
      ];
    },
    //move block
    moveBlock(rowIndex, colIndex) {
      const puzzleValue = this.sixteenPuzzle[rowIndex][colIndex];
      //if clicked '' box return
      if (puzzleValue === 0) {
        return;
      }

      const emptyBlock = this.findEmptyBlock();
      const emptyRow = emptyBlock.rowIndex;
      const emptyCol = emptyBlock.colIndex;

      if (
        (rowIndex === emptyRow && Math.abs(colIndex - emptyCol) === 1) ||
        (colIndex === emptyCol && Math.abs(rowIndex - emptyRow) === 1)
      ) {
        //swap with empty space
        this.sixteenPuzzle[rowIndex][colIndex] = 0;
        this.sixteenPuzzle[emptyRow][emptyCol] = puzzleValue;
      }

      if (this.solvedPuzzle()) {
        console.log("winner");
        this.winnerAt = this.calculateTime(this.startPlay);
        // this.keepScore.push({
        //   player: this.playerName,
        //   times: new Date() - this.startPlay,
        // });
        this.postData({
          name: this.playerName,
          time: new Date() - this.startPlay,
        });
        console.log("this startplay", this.startPlay);
        // console.log(this.keepScore);
        this.startPlay = false;
        this.isButtonDisable = false;
      }
    },

    //for calculate time
    calculateTime(time) {
      let diffTime = new Date() - time;
      let days = diffTime / (24 * 60 * 60 * 1000);
      let hours = (days % 1) * 24;
      let minutes = (hours % 1) * 60;
      let secs = (minutes % 1) * 60;
      [days, hours, minutes, secs] = [
        Math.floor(days),
        Math.floor(hours),
        Math.floor(minutes),
        Math.floor(secs),
      ];

      // console.log(`minutes: ${minutes} seconds: ${secs}`);
      return `${hours} : ${minutes} : ${secs}`;
    },
    calculateTime2(time) {
      let days = time / (24 * 60 * 60 * 1000);
      let hours = (days % 1) * 24;
      let minutes = (hours % 1) * 60;
      let secs = (minutes % 1) * 60;
      [days, hours, minutes, secs] = [
        Math.floor(days),
        Math.floor(hours),
        Math.floor(minutes),
        Math.floor(secs),
      ];
      return `${hours} : ${minutes} : ${secs}`;
    },

    //shuffle the number
    shuffle() {
      const autoMove = [
        { row: -1, col: 0 }, // up
        { row: 1, col: 0 }, // down
        { row: 0, col: -1 }, // left
        { row: 0, col: 1 }, // right
      ];

      for (let i = 0; i < 100; i++) {
        const emptyBlock = this.findEmptyBlock();
        const emptyRow = emptyBlock.rowIndex;
        const emptyCol = emptyBlock.colIndex;
        const randomMove =
          autoMove[Math.floor(Math.random() * autoMove.length)];
        const newRow = emptyRow + randomMove.row;
        const newCol = emptyCol + randomMove.col;

        if (newRow >= 0 && newRow < 4 && newCol >= 0 && newCol < 4) {
          this.moveBlock(newRow, newCol);
        }
      }
    },

    //find empty block
    findEmptyBlock() {
      for (let r = 0; r < this.sixteenPuzzle.length; r++) {
        for (let c = 0; c < this.sixteenPuzzle[r].length; c++) {
          if (this.sixteenPuzzle[r][c] === 0) {
            return { rowIndex: r, colIndex: c };
          }
        }
      }
    },
    //is puzzle solved yet?
    solvedPuzzle() {
      if (!this.startPlay) {
        return;
      }
      const flatArray = this.sixteenPuzzle.flat();
      for (let i = 0; i < flatArray.length - 1; i++) {
        if (flatArray[i] !== i + 1) {
          return false;
        }
      }
      return true;
    },

    async postData(data) {
      //   const dataToPost = { name: "John Doe", time: 1234567890 }; // Replace with desired name and time
      try {
        const response = await axios.post(this.apiUrl, data);
        console.log("Post response:", response.data);
        this.getAllData();
      } catch (error) {
        console.error(
          "Error posting data:",
          error.response ? error.response.data : error.message
        );
      }
    },
    async getAllData() {
      try {
        const response = await axios.get(this.apiUrl);
        this.keepScore = response.data.data;

        console.log(this.keepScore);
        console.log("Get all data response:", response.data);
      } catch (error) {
        console.error(
          "Error getting data:",
          error.response ? error.response.data : error.message
        );
      }
    },
  },
  // mounted the function displayTime() and setInterval for 1 sec
  mounted: async function () {
    await this.getAllData();
    setInterval(() => {
      this.displayTime();
    }, 1000);
  },
};
</script>
