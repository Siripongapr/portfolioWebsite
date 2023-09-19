<script setup>
import blog from "../components/blog.vue";
import navigationbar from "../components/navigationbar.vue";
import borderLine from "../components/borderLine.vue";
import footerF from "../components/footer.vue";
</script>

<template>
  <main>
    <borderLine />
    <div style="padding: 30px">
      <navigationbar />
      <blog />
      <footerF />
    </div>
  </main>
</template>
