<script setup>
import { ref } from "vue";

const comments = ref([
  {
    img: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
    name: "Jane Doe",
    context:
      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat nobis suscipit, ut laudantium quis officiis obcaecati distinctioin, eos neque maxime, esse ea recusandae et ratione sed ducimus laborum facere",
  },
  {
    img: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
    name: "John Dee",
    context:
      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat nobis suscipit, ut laudantium quis officiis obcaecati distinctioin, eos neque maxime, esse ea recusandae et ratione sed ducimus laborum facere",
  },
  {
    img: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
    name: "John Wick",
    context:
      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat nobis suscipit, ut laudantium quis officiis obcaecati distinctioin, eos neque maxime, esse ea recusandae et ratione sed ducimus laborum facere",
  },
  {
    img: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
    name: "Jave Wong",
    context:
      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat nobis suscipit, ut laudantium quis officiis obcaecati distinctioin, eos neque maxime, esse ea recusandae et ratione sed ducimus laborum facere",
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
            <p class="glitch" data-text="DESIGNING THE PERFECT NOTIFICATION UX">
            DESIGNING THE PERFECT
            </p>
            <p class="glitch" data-text="NOTIFICATION UX">
            NOTIFICATION UX
            </p>
          </div>
        <div class="flex flex-row justify-center mt-5">
          <div class="  ">
            <a href=""> Home </a>
          </div>
          <div class="mr-2 ml-2">/</div>
          <div class="  ">
            <a href=""> Blog </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section blogPage class="px-10 md:px-36">
    <div style="color: white">
      <p class="py-10">
        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Natus quod
        hic, repudiandae, itaque saepe laudantium odit deserunt sit facilis
        optio dolor pariatur doloremque esse voluptas iure error facere.
        Doloribus fuga dolore odit iusto magni voluptatibus ipsa sapiente? At
        mollitia nobis ullam et ut molestias quis quibusdam dolorum, maxime
        necessitatibus omnis excepturi amet illo nostrum impedit placeat. Magnam
        fugiat blanditiis, laboriosam esse nesciunt tenetur nihil distinctio
        numquam vitae consectetur nobis debitis harum tempore quos hic dolor
        unde odio quod veniam? Suscipit, quam quos quod, magni delectus
        provident, molestias consequuntur et expedita temporibus soluta non.
        Corrupti illum aperiam debitis? Rem, illum officiis!
      </p>
      <img src="https://bslthemes.com/html/glitche/images/blog_1.jpg" alt="" />
      <p class="py-10">
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor eos dicta
        voluptatibus incidunt, distinctio quam neque doloribus earum architecto
        a blanditiis quisquam officiis consectetur debitis saepe obcaecati,
        placeat expedita eveniet est at quia doloremque sint autem! Dolores
        placeat nemo ullam incidunt natus voluptatibus tempore ea adipisci
        minima autem cupiditate sint repellat fuga earum neque velit possimus
        iste voluptas laborum totam, a quae consequuntur itaque? Vitae commodi
        libero, amet autem ex ipsum illo, sed perspiciatis odio quisquam beatae
        culpa laborum nisi cumque quas fuga dicta veritatis blanditiis numquam
        ea officia nihil repellendus reprehenderit unde? In ullam possimus
        veritatis, vero facere quaerat.
      </p>
      <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus,
        blanditiis eveniet repellendus, reprehenderit nam hic cumque nisi error
        optio laboriosam dolorum doloribus eligendi eaque magni? Illum minima
        assumenda voluptates nobis nulla est placeat voluptatum necessitatibus
        facilis, porro eveniet deserunt amet aspernatur, veniam perspiciatis
        quis beatae maiores dolores laboriosam adipisci eos?
      </p>
    </div>

    <div class="pt-24" style="color: white">
      <h1>4 Comments</h1>
      <div>
        <div
          class="grid grid-cols-10 py-3"
          style="border-bottom: 1px solid #666666"
          v-for="(item, index) in comments"
          :key="index"
        >
          <div class="col-span-1 items-center">
            <img style="width: 6rem" :src="item.img" alt="" />
          </div>
          <div class="pl-5 col-start-2 col-span-10">
            <div class="pb-5">
              <h1>
                {{ item.name }}
              </h1>
            </div>
            <div style="color: #a2a2a6">
              {{ item.context }}
            </div>
          </div>
        </div>

        <div class="fw py-10">
          <div> <h1> WRITE A COMMENT </h1></div>
          <div>
            <input
              type="text"
              class="p-0 h-16 w-full focus:ring-0"
              placeholder="Name"
              style="
                color: white;
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
                color: white;
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
              placeholder="Comments"
            ></textarea>
          </div>
          <div>
            <button
              class="rounded-none px-10 py-2 mt-8"
              style="background-color: #f26b38"
            >
              Add comment
            </button>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
