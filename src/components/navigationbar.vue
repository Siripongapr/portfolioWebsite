<template>
  <nav class="fixed z-40" style="width: 100%">
    <div class="pr-10 py-2 md:py-5" style="background-color: #31313a">
      <ul
        class="flex justify-center align-middle md:justify-end flex-row gap-12 mr-2 md:mr-10"
        style="color: white"
      >
        <li class="hidden md:block">
          <a href="/resume"> Resume </a>
        </li>
        <li class="hidden md:block">
          <a href="/portfolio"> Portfoilio </a>
        </li>
        <li class="md:hidden">
          <button
            id="nav-hamburger"
            type="button"
            class="p-2 rounded-xl hover:bg-zinc-700"
            aria-controls="nav-hamburger"
            aria-expanded="false"
          >
            <svg
              class="w-5 h-5"
              aria-hidden="true"
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 17 14"
            >
              <path
                stroke="currentColor"
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M1 1h15M1 7h15M1 13h15"
              />
            </svg>
          </button>
          <div class="hidden w-full" id="nav-hamburger">
              <ul class=" bg-gray-50 flex flex-col" style="color: white;">
                <li class="block">
                  <a class="block" href="/resume"> Resume </a>
                </li>
                <li class="block">
                  <a href="/portfolio"> Portfoilio </a>
                </li>
                <li class="block">
                  <a href="/blog"> Blog </a>
                </li>
                <li class="block">
                  <a href="/contacts"> Contact </a>
                </li>
              </ul>
          </div>
        </li>
        <li class="hidden md:block">
          <a href="/blog"> Blog </a>
        </li>
        <li class="hidden md:block">
          <a href="/contacts"> Contact </a>
        </li>
      </ul>
    </div>
  </nav>
  
</template>
