import en from '@/locales/en.json';
import es from '@/locales/es.json';

const translations = {
  en,
  es,
};

export function LoadTranslation(lang) {
  return translations[lang] || translations.en; // Default to English
}

