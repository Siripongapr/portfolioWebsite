<script setup>
import contacts from '../components/contacts.vue';
import navigationbar from '../components/navigationbar.vue';
import borderLine from '../components/borderLine.vue';
import footerF from '../components/footer.vue';
</script>

<template>
    <main>
        <borderLine/>
    <div style="padding: 30px;">
      <navigationbar/>
      <contacts/>
      <footerF/>
    </div>

    </main>
</template>