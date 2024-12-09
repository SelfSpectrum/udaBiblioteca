<template>
  <div class = "flex flex-row items-center p-6 bg-gray-100 min-h-screen">
    <div class = "bg-white p-8 shadow-md rounded w-full max-w-md">
      <h2 class = "text-2xl font-bold mb-6">Inicio de Sesión</h2>
      <form @submit.prevent = "login">
        <div class = "mb-4">
          <label class = "block text-sm font-medium text-gray-700" for = "username">Nombre de Usuario</label>
          <input
            v-model = "form.username"
            id = "username"
            type = "text"
            class = "mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          />
        </div>
        <div class = "mb-6">
          <label class="block text-sm font-medium text-gray-700" for = "password">Contraseña</label>
          <input
            v-model = "form.password"
            id = "password"
            type = "password"
            class = "mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
          />
        </div>
        <button
          type = "submit"
          class = "w-full bg-indigo-500 hover:bg-indigo-600 text-white font-bold py-2 px-4 rounded">
          Login
        </button>
        <p v-if = "errorMessage" class = "text-red-500 mt-4">{{ errorMessage }}</p>
      </form>
    </div>
  </div>
</template>

<script lang = "ts">
import { defineComponent, reactive } from 'vue'
import axios from 'axios'

export default defineComponent({
	name: 'Login',
	setup() {
		const form = reactive({ username: '', password: '' })
		const errorMessage = reactive({})
		const login = async () => {
			try {
				const response = await axios.post('/api/login', form)
				if (response.data.success) {
					alert('Logged in successfully!')
					localStorage.setItem('session', JSON.stringify(response.data))
					// Redirect to a protected route or dashboard
				}
			}
			catch (error) {
				errorMessage.value = error.response?.data?.message
			}
		}
		return { form, login, errorMessage }
	},
})
</script>

