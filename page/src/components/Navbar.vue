<template>
  <nav class="navbar">
    <div class="logo">
      <img src="@/assets/raylib_logo.png" alt="raylib logo" />
      <h1>raylib Wiki</h1>
    </div>

    <ul class="nav-links">
      <!-- Pages Dropdown -->
      <li><h1>{{ translation.navbar.pages }} ▼</h1></li>

      <li><a href="#social"><h1>{{ translation.navbar.social }}</h1></a></li>
      <li><a href="#about"><h1>{{ translation.navbar.about }}</h1></a></li>
      
      <!-- Language Dropdown -->
      <li class="dropdown-container">
        <!--button @click="ToggleDropdown" class="dropbtn">
          <h1>{{ translation.navbar.language }} ▼</h1>
        </button-->
        <button class = "dropdown-button">
          <h1>{{ translation.navbar.language }} ▼</h1>
        </button>
        <!--div v-if="dropdownOpen" class="dropdown-content"-->
        <ul class = "dropdown-menu">
          <!--button @click = "ToggleLanguage('es')" class = "droplangbtn">Español</button>
          <button @click = "ToggleLanguage('en')" class = "droplangbtn">English</button-->
          <li @click = "ToggleLanguage('es')">Español</li>
          <li @click = "ToggleLanguage('en')">English</li>
        </ul>
        <!--/div-->
      </li>
    </ul>
  </nav>
</template>

<script>
import { ref, onMounted } from 'vue';
import { LoadTranslation } from '@/services/translation';

export default {
  data() {
    const lang = ref(localStorage.getItem('lang') || 'en');
    const translation = ref(LoadTranslation(lang.value));

    function ToggleLanguage(selectedLang) {
      lang.value = selectedLang;
      localStorage.setItem('lang', selectedLang); // Save language preference
      translation.value = LoadTranslation(lang.value);
    }

    onMounted(() => {
      translations.value = LoadTranslation(lang.value);
    });

    return {
      dropdownOpen: false,
      translation,
      ToggleLanguage
    }
  },
  methods: {
    ToggleDropdown() {
      this.dropdownOpen = !this.dropdownOpen;
    }
  }
}
</script>

<style scoped>
.navbar {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  width: 100%;
  background-color: #333;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px 20px;
  z-index: 1000;
  color: white;
}

.logo {
  display: flex;
  align-items: center;
}

.logo img {
  width: 40px;
  height: 40px;
  margin-right: 10px;
}

.nav-links {
  list-style: none;
  display: flex;
  align-items: center;
  margin: 0;
}

.nav-links li {
  margin: 0 15px;
}

.nav-links a {
  text-decoration: none;
  color: white;
  font-size: 16px;
}

.nav-links .dropdown {
  position: relative;
}

/*
.dropbtn {
  background-color: #333;
  color: white;
  border: none;
  cursor: pointer;
  font-size: 16px;
}

.droplangbtn {
  width: 100%;
  border: none;
  border-radius: 0;
  cursor: pointer;
}
.droplangbtn:hover {
  background-color: #444;
  -webkit-transition: background-color 200ms linear;
  -ms-transition: background-color 200ms linear;
  transition: background-color 200ms linear;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: white;
  color: black;
  min-width: 120px;
  box-shadow: 0px 8px 16px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 8px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown .dropdown-content {
  display: block;
}
*/

.dropdown-container ul {
  list-style-type: none;
  padding: 0;
  margin: 0;
  display: flex;
  flex-direction: column;
}
.dropdown-container li {
  margin-right: 15px;
}

/* Dropdown Container */
.dropdown-container {
  position: relative;
}

/* Dropdown Button */
.dropdown-button {
  background: none;
  border: none;
  color: white;
  cursor: pointer;
  font-size: 16px;
}

/* Dropdown Menu */
.dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  background-color: #444;
  list-style-type: none;
  padding: 10px;
  margin: 0;
  opacity: 0;
  visibility: hidden;
  transform: translateY(-10px);
  transition: all 0.3s ease;
}

/* Show dropdown on hover with smooth animation */
.dropdown-container:hover .dropdown-menu {
  opacity: 1;
  visibility: visible;
  transform: translateY(0);
}

/* Dropdown items */
.dropdown-menu li {
  padding: 5px 10px;
  color: white;
  cursor: pointer;
}

.dropdown-menu li:hover {
  background-color: #555;
}

</style>

