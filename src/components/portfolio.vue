<script setup>
import { ref } from 'vue';

const image = ref([
    {img:"https://bslthemes.com/html/glitche/images/works/work1.jpg", title:"head", link:"tower with blue sky"},
    {img:"https://bslthemes.com/html/glitche/images/works/work1.jpg", title:"head2", link:"tower with blue sky2"},
    {img:"https://bslthemes.com/html/glitche/images/works/work1.jpg", title:"head3", link:"tower with blue sky3"},
    {img:"https://bslthemes.com/html/glitche/images/works/work1.jpg", title:"head4", link:"tower with blue sky4"},
    {img:"https://bslthemes.com/html/glitche/images/works/work1.jpg", title:"head5", link:"tower with blue sky5"},
    {img:"https://bslthemes.com/html/glitche/images/works/work1.jpg", title:"head6", link:"tower with blue sky6"},
    {img:"https://bslthemes.com/html/glitche/images/works/work1.jpg", title:"head7", link:"tower with blue sky7"},
    {img:"https://bslthemes.com/html/glitche/images/works/work1.jpg", title:"head8", link:"tower with blue sky8"},

])
</script>

<template>
      <section main>
    <div
      class="grid grid-flow-row place-items-center"
      style="height: 100vh; color: white"
    >
      <div>
        <div class="text-center font-bold text-5xl md:text-8xl">
            <p class="glitch" data-text="PORTFOLIO">
            PORTFOLIO
            </p>
          </div>
        <div class="flex flex-row justify-center mt-5">
          <div class="  ">
            <a href="/"> Home </a>
          </div>
          <div class="mr-2 ml-2">/</div>
          <div class="  ">
            <a href="/portfolio"> Portfolio </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- section portfolio -->
  <section portfolio class="pb-32 px-9 md:px-16 " style=" color: white;">
    <div class="flex flex-row gap-2 md:gap-10">
        <div>
            <a href="">
            All</a>
        </div>
        <div>
            <a href="">
            Video</a>
        </div><div>
            <a href="">
            Music</a>
        </div><div>
            <a href="">
            Link</a>
        </div><div>
            <a href="">
            Image</a>
        </div>
        <div>
            <a href="">
            Gallery</a>
        </div>
        <div>
            <a href="">
            Content</a>
        </div>
    </div>
    <div class="grid grid-cols-1 md:grid-cols-3 gap-10 pt-5" style="width: 100%;">
        <!-- <div v-for="(item, index) in image" :key="index">
            <img src={{ item.img }} alt="">
            <h1>{{item.title}}</h1>
            <a href="">{{ item.link }}</a>
        </div> -->
        <div class=" text-center" v-for="(item,index) in image" :key="index">
            <img :src="item.img"  alt="">
            <h1>{{item.title}}</h1>
            <a class="font-bold" href="">{{ item.link }}</a>
        </div>
    </div>
  </section>
</template>