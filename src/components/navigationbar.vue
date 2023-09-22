<script>
export default {
  data() {
    return {
      isMenuOpen: false,
    };
  },
  methods: {
    toggleMenu() {
      this.isMenuOpen = !this.isMenuOpen;
    },
  },
};
</script>

<template>
  <nav class="fixed z-40" style="width: 100%">
    <div class="pr-10 py-2 md:py-5" style="background-color: #31313a">
      <ul
        class="flex justify-center flex-wrap align-middle md:justify-end flex-row gap-12 mr-4 md:mr-10"
        style="color: white"
      >
        <li class="">
          <a href="/resume"> Resume </a>
        </li>
        <li class="">
          <a href="/portfolio"> Portfoilio </a>
        </li>
        <li class="">
          <a href="/blog"> Blog </a>
        </li>
        <li class="">
          <a href="/contacts"> Contact </a>
        </li>
        <li class="">
          <a href="/slidePuzzle"> Games </a>
        </li>
      </ul>
    </div>
  </nav>
</template>
