<script setup>
import borderLine from '../components/borderLine.vue';
import Home from '../components/home.vue';
import navigationbar from '../components/navigationbar.vue';
import footerF from '../components/footer.vue';
</script>

<template>
    <main>
        <borderLine/>
    <div style="padding: 30px;">
      <navigationbar/>
      <Home/>
      <footerF/>
    </div>

    </main>
</template>