<template>
  <div class="flex flex-col items-center p-6 bg-gray-100 min-h-screen">
    <div class="bg-white p-8 shadow-md rounded w-full max-w-md">
      <h2 class="text-2xl font-bold mb-6">Add New User</h2>
      <form @submit.prevent="addUser">
        <div class="mb-4">
          <label class="block text-sm font-medium text-gray-700" for="username">Usuario</label>
          <input
            v-model="form.username"
            id="username"
            type="text"
            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
            required/>
        </div>
        <div class="mb-6">
          <label class="block text-sm font-medium text-gray-700" for="password">Contraseña</label>
          <input
            v-model="form.password"
            id="password"
            type="password"
            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
            required/>
        </div>
        <div class="mb-6">
          <label class="block text-sm font-medium text-gray-700" for="role">Rol</label>
          <input
            v-model="form.role"
            id="role"
            type="role"
            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
            required/>
        </div>
        <button
          type="submit"
          class="w-full bg-indigo-500 hover:bg-indigo-600 text-white font-bold py-2 px-4 rounded">
          Add User
        </button>
        <p v-if="errorMessage" class="text-red-500 mt-4">{{ errorMessage }}</p>
        <p v-if="successMessage" class="text-green-500 mt-4">{{ successMessage }}</p>
      </form>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent, reactive } from 'vue'
import axios from 'axios'

export default defineComponent({
  name: 'AddUser',
  setup() {
    const form = reactive({ username: '', password: '', role: '' })
    const errorMessage = reactive('')
    const successMessage = reactive('')

    const addUser = async () => {
      try {
        const response = await axios.post('/api/users', form)
        if (response.data.success) {
          successMessage.value = response.data.message
          errorMessage.value = ''
          form.username = ''
          form.password = ''
          form.role = ''
        }
      }
      catch (error) {
        errorMessage.value = error.response?.data?.message || 'An error occurred.'
        successMessage.value = ''
      }
    }

    return { form, addUser, errorMessage, successMessage }
  },
})
</script>

