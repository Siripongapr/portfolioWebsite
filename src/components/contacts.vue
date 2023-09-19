<script setup>
import { ref } from "vue";
import phone from "./icons/phoneButton.vue";
import email from "./icons/emailButton.vue";
import gps from "./icons/gpsButton.vue"
const contacts = ref([
  { Icon: phone, Title: "Phone", info: "088-447-4698" },
  { Icon: email, Title: "Email", info: "siripong.api43@gmail.com" },
  {
    Icon: gps,
    Title: "Address",
    info: "186/59 หมู่ 11 ต.วังไผ่ อ.เมือง จ.ชุมพร 86000",
  },
]);
</script>

<style>
.fw {
  color: white;
}
</style>

<template>
  <section main>
    <div
      class="grid grid-flow-row place-items-center"
      style="height: 100vh; color: white"
    >
      <div>
        <div class="text-center font-bold text-5xl md:text-8xl">
          <p class="glitch" data-text="CONTACT">CONTACT</p>
        </div>
        <div class="flex flex-row justify-center mt-5">
          <div class="  ">
            <a href="/"> Home </a>
          </div>
          <div class="mr-2 ml-2">/</div>
          <div class="  ">
            <a href="/contacts"> Contact </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section contacts class="px-9 md:px-36 xl:px-60  pb-36">
    <div class="fw">
      <div><h1>CONTACTS</h1></div>
    </div>
    <div class="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 py-10 fw">
      <div v-for="(item, index) in contacts" :key="index"
      class="grid grid-cols-5">
      <div>
        <Component :is="item.Icon" class=" object-center" style="color: #f26b38;"/>
      </div>
      <div>
        <h1>{{ item.Title }}</h1>
      </div>
      <div class="py-5  col-span-5">
        <p>{{ item.info }}</p>
      </div>
      </div>
    </div>
    <div class="fw">
      <div>
        <input
          type="text"
          class="p-0 h-16 w-full focus:ring-0"
          placeholder="Name"
          style="
            color: black;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #666666;
            height: 60px;
            outline: 0;
          "
        />
      </div>
      <div class="py-10">
        <input
          type="text"
          class="p-0 w-full focus:ring-0"
          placeholder="Email"
          style="
            color: black;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #666666;
            height: 60px;
          "
        />
      </div>
      <div>
        <textarea
          name=""
          id=""
          class="p-0 focus:right-0 w-full"
          rows="10"
          style="
            color: white;
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #666666;
            height: 120px;
          "
          placeholder="Message"
        ></textarea>
      </div>
      <div>
        <button
          class="rounded-none px-10 py-2 mt-8"
          style="background-color: #f26b38"
        >
          Send Message
        </button>
      </div>
    </div>
  </section>
</template>
