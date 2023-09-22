<script setup>
import { ref } from "vue";
import checked from "./icons/checkedButton.vue";

const aboutme = ref([
  { headers: "Name: ", title: "Siripong Apiborrirat" },
  { headers: "Age: ", title: "24" },
  { headers: "Job: ", title: "Student" },
  { headers: "Citizenship: ", title: "Thailand" },
  { headers: "Residentge: ", title: "Bangkok" },
  { headers: "Email: ", title: "siripong.api43@gmail.com" },
]);
const knowledge = ref([
  { list: "HTML" },
  { list: "CSS" },
  { list: "JavaScript" },
  { list: "C#" },
  { list: "C++" },
  { list: "Go" },
]);
</script>
<template>
  <!-- main section -->
  <section main>
    <div
      class="grid grid-flow-row place-items-center"
      style="height: 100vh; color: white"
    >
      <div>
        <div class="text-center font-bold text-5xl md:text-8xl">
          <p class="glitch" data-text="RESUME">RESUME</p>
        </div>
        <div class="flex flex-row justify-center mt-5">
          <div class="  ">
            <a href="/"> Home </a>
          </div>
          <div class="mr-2 ml-2">/</div>
          <div class="  ">
            <a href="/resume"> Resume </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- section aboutme -->
  <section aboutme>
    <div class="" style="color: white; margin: 50px">
      <h1 class="text-center md:text-start">About me</h1>
      <div
        class="grid grid-cols-1 place-items-center md:place-items-start md:grid-cols-12 md:gap-4"
        style="margin-top: 30px"
      >
        <div class="col-span-2">
          <img
            style="width: 8rem"
            class="rounded-full mt-10"
            src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"
            alt=""
          />
        </div>
        <div class="md:col-span-10 py-10 md:p-0">
          <p class="overflow-y-scroll h-48 md:overflow-y-hidden">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos
            optio ipsum, pariatur quia libero quas ratione excepturi omnis,
            autem nemo culpa reiciendis quidem unde repudiandae iure?
            Perferendis eum architecto, nihil adipisci aperiam hic dolorum.
            Beatae esse, quam itaque aspernatur soluta eaque odit neque illo
            tempore ex eligendi animi accusamus reiciendis atque provident nihil
            corporis obcaecati ratione ea consectetur molestias fugit eveniet
            tenetur. Maxime aut nesciunt doloribus reiciendis molestiae
            recusandae debitis tenetur aliquid illo accusamus commodi in,
            assumenda dicta obcaecati facilis sunt ab nam porro facere quidem ex
            voluptatem. Totam dolorem ducimus pariatur in ipsum esse ratione
            quidem reiciendis placeat accusantium?
          </p>
          <div class="mt-8">
            <ul class="grid grid-cols-1 md:grid-cols-3">
              <li v-for="(item, index) in aboutme" :key="index">
                <strong class="text-orange-500 font-semibold"
                  >{{ item.headers }}
                </strong>
                <a>
                  {{ item.title }}
                </a>
              </li>
            </ul>
            <a href="/src/assets/siripongCV.pdf" download>
              <button
                class="rounded-none px-10 py-2 mt-8"
                style="background-color: #f26b38"
              >
                Download CV
              </button>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- education section -->
  <section education class="py-10">
    <div style="color: white; margin: 50px">
      <h1>Education</h1>
      <div class="grid grid-cols-1 md:grid-cols-2">
        <div class="grid grid-row">
          <div>
            <strong>2019 - present</strong> <br />Computer Engineering -
            Sripatum University
          </div>
          <div class="">
            <p style="color: gray">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde
              possimus fugiat dicta corporis quidem praesentium quas, porro fuga
              explicabo quae quisquam eius distinctio quaerat libero tempore
              magni necessitatibus repellendus saepe expedita rem labore.
              Similique reiciendis, ipsum suscipit sequi commodi ullam ab! Unde
              dolorem rerum, iure cum voluptates dolor quia sapiente!
            </p>
          </div>
        </div>
        <div class="py-10 md:px-10 md:py-0">
          <strong>KNOWLEDGE</strong> <br />
          <ul class="grid grid-rows-2 gap-2 mt-5">
            <li class="flex" v-for="(item, index) in knowledge" :key="index">
              <checked
                class="w-3 mr-3 font-extrabold justify-center"
                style="color: #f26b38"
              />
              {{ item.list }}
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>
</template>
