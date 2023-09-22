<script setup>
import slidePuzzle from "../components/slidePuzzle.vue";
import footerF from "../components/footer.vue";
import navigationbar from "../components/navigationbar.vue";
import borderLine from "../components/borderLine.vue";
</script>

<template>
  <main>
    <borderLine />
    <div style="padding: 30px">
      <navigationbar />
      <slidePuzzle />
      <footerF />
    </div>
  </main>
</template>
