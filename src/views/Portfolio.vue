<script setup>
import portfolio from '../components/portfolio.vue'
import navigationbar from '../components/navigationbar.vue';
import borderLine from '../components/borderLine.vue';
import footerF from '../components/footer.vue';

</script>
<template>
    <main>
        <borderLine/>
    <div style="padding: 30px;">
      <navigationbar/>
      <portfolio/>
      <footerF/>
    </div>
    </main>
</template>