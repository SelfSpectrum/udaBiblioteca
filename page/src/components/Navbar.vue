<template>
  <header class="bg-white">
    <nav class="mx-auto flex max-w-7xl items-center justify-between p-6 lg:px-8" aria-label="Global">
      <div class="flex lg:flex-1">
        <a href="#" class="-m-1.5 p-1.5">
          <span class="sr-only">UDA</span>
          <img class="h-8 w-auto" src="/logo-udacorporativo.png" alt="" />
        </a>
      </div>
      <div class="flex lg:hidden">
        <button type="button" class="-m-2.5 inline-flex items-center justify-center rounded-md p-2.5 text-gray-700" @click="mobileMenuOpen = true">
          <span class="sr-only">Open main menu</span>
          <Bars3Icon class="size-6" aria-hidden="true" />
        </button>
      </div>
      <PopoverGroup class="hidden lg:flex lg:gap-x-12">
        <!-- Conditionally render links -->
        <template v-if="user">
          <a href="#" class="text-sm/6 font-semibold text-gray-900">Carreras</a>
          <a href="#" class="text-sm/6 font-semibold text-gray-900">Asignaturas</a>
          <a href="#" class="text-sm/6 font-semibold text-gray-900">Autores</a>
          <a href="#" class="text-sm/6 font-semibold text-gray-900">Libros</a>
          <a href="#" class="text-sm/6 font-semibold text-gray-900">Usuarios</a>
          <span class="text-sm/6 font-semibold text-gray-900">{{ user.username }}</span>
        </template>
      </PopoverGroup>
    </nav>
    <Dialog class="lg:hidden" @close="mobileMenuOpen = false" :open="mobileMenuOpen">
      <div class="fixed inset-0 z-10" />
      <DialogPanel class="fixed inset-y-0 right-0 z-10 w-full overflow-y-auto bg-white px-6 py-6 sm:max-w-sm sm:ring-1 sm:ring-gray-900/10">
        <div class="flex items-center justify-between">
          <a href="#" class="-m-1.5 p-1.5">
            <span class="sr-only">Biblioteca</span>
            <img class="h-8 w-auto" src="/logo-udacorporativo.png" alt="" />
          </a>
          <button type="button" class="-m-2.5 rounded-md p-2.5 text-gray-700" @click="mobileMenuOpen = false">
            <span class="sr-only">Close menu</span>
            <XMarkIcon class="size-6" aria-hidden="true" />
          </button>
        </div>
        <div class="mt-6 flow-root">
          <div class="-my-6 divide-y divide-gray-500/10">
            <div class="space-y-2 py-6">
              <template v-if="user">
                <a href="#" class="-mx-3 block rounded-lg px-3 py-2 text-base/7 font-semibold text-gray-900 hover:bg-gray-50">Carreras</a>
                <a href="#" class="-mx-3 block rounded-lg px-3 py-2 text-base/7 font-semibold text-gray-900 hover:bg-gray-50">Asignaturas</a>
                <a href="#" class="-mx-3 block rounded-lg px-3 py-2 text-base/7 font-semibold text-gray-900 hover:bg-gray-50">Autores</a>
                <a href="#" class="-mx-3 block rounded-lg px-3 py-2 text-base/7 font-semibold text-gray-900 hover:bg-gray-50">Libros</a>
                <a href="#" class="-mx-3 block rounded-lg px-3 py-2 text-base/7 font-semibold text-gray-900 hover:bg-gray-50">Usuarios</a>
                <span class="text-sm/6 font-semibold text-gray-900">{{ user.username }}</span>
              </template>
            </div>
          </div>
        </div>
      </DialogPanel>
    </Dialog>
  </header>
</template>


<script setup lang="ts">
import { ref, onMounted } from 'vue'
import axios from 'axios'

import { Dialog, DialogPanel, PopoverGroup, } from '@headlessui/vue'
import { Bars3Icon, XMarkIcon, } from '@heroicons/vue/24/outline'

// Reactive state for mobile menu
const mobileMenuOpen = ref(false)

// Reactive user state
const user = ref<{ username: string; role: string } | null>(null)

// Function to check session
const fetchSession = async () => {
	try {
		const response = await axios.get('/api/session') // Backend route to fetch session data
		if (response.data.success) {
			user.value = {
				username: response.data.username,
				role: response.data.role,
			}
		}
	}
	catch (error) {
		console.error('Failed to fetch session:', error)
		user.value = null // Clear user data if session fetch fails
	}
}

// Fetch session data on component mount
onMounted(() => {
	fetchSession()
})
</script>

