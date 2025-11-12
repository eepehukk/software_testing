import { defineConfig } from 'astro/config'
import solid from '@astrojs/solid-js'
import tailwind from '@astrojs/tailwind'
import icon from 'astro-icon'

// https://astro.build/config
export default defineConfig({
  integrations: [solid(), tailwind(), icon()],
  server: {
    port: 4321,
    host: '0.0.0.0',
    allowedHosts: ['frontend-dev', 'localhost', '*'], // Allows me the access from robot-tests
  },
  vite: {
    server: {
      allowedHosts: ['frontend-dev', 'localhost', '0.0.0.0'],
    },
  },
})
