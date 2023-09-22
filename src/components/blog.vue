<script setup>
import { ref } from "vue";

const image = ref([
  {
    img: "https://bslthemes.com/html/glitche/images/works/work1.jpg",
    date: "20-02-2000",
    link: "tower with blue sky",
  },
  {
    img: "https://bslthemes.com/html/glitche/images/works/work1.jpg",
    date: "20-02-2000",
    link: "tower with blue sky2",
  },
  {
    img: "https://bslthemes.com/html/glitche/images/works/work1.jpg",
    date: "20-02-2000",
    link: "tower with blue sky3",
  },
  {
    img: "https://bslthemes.com/html/glitche/images/works/work1.jpg",
    date: "20-02-2000",
    link: "tower with blue sky4",
  },
  {
    img: "https://bslthemes.com/html/glitche/images/works/work1.jpg",
    date: "20-02-2000",
    link: "tower with blue sky5",
  },
  {
    img: "https://bslthemes.com/html/glitche/images/works/work1.jpg",
    date: "20-02-2000",
    link: "tower with blue sky6",
  },
  {
    img: "https://bslthemes.com/html/glitche/images/works/work1.jpg",
    date: "20-02-2000",
    link: "tower with blue sky7",
  },
  {
    img: "https://bslthemes.com/html/glitche/images/works/work1.jpg",
    date: "20-02-2000",
    link: "tower with blue sky8",
  },
]);
</script>

<template>
  <section main>
    <div
      class="grid grid-flow-row place-items-center"
      style="height: 100vh; color: white"
    >
      <div>
        <div class="text-center font-bold text-5xl md:text-8xl">
          <p class="glitch" data-text="BLOG">BLOG</p>
        </div>
        <div class="flex flex-row justify-center mt-5">
          <div class="  ">
            <a href="/"> Home </a>
          </div>
          <div class="mr-2 ml-2">/</div>
          <div class="  ">
            <a href="/blog"> Blog </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section portfolio class="pb-32 px-9 md:px-16" style="color: white">
    <div>LASTEST POST</div>
    <div
      class="grid grid-cols-1 md:grid-cols-3 gap-10 pt-5"
      style="width: 100%"
    >
      <div class="text-center" v-for="(item, index) in image" :key="index">
        <a href="/blogPage">
          <img :src="item.img" alt="" />
        </a>
        <div class="flex items-center flex-col mt-3">
          <div>
            <p
              style="font-size: 10px"
              class="border border-orange-500 w-fit p-1"
            >
              {{ item.date }}
            </p>
          </div>
          <div>
            <a class="font-bold" href="/blogPage">{{ item.link }}</a>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
