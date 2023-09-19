<script setup>
import blogPage from '../components/blogPage.vue';
import borderLine from '../components/borderLine.vue';
import navigationbar from '../components/navigationbar.vue';
import footerF from '../components/footer.vue';
</script>

<template>
    <main>
        <borderLine/>
    <div style="padding: 30px;">
      <navigationbar/>
      <blogPage/>
      <footerF/>
    </div>
    </main>
</template>