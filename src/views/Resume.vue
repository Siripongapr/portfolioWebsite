<script setup>
import resume from '../components/resume.vue'
import borderLine from '../components/borderLine.vue';
import navigationbar from '../components/navigationbar.vue';
import footerF from '../components/footer.vue';
</script>

<template>
  <main>
    <borderLine/>
    <div style="padding: 30px;">
      <navigationbar/>
      <resume/>
      <footerF/>
    </div>
  </main>
</template>
<style>
body{
  background-color: #31313A;
}
</style>