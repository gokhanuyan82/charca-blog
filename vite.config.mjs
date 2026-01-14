import { defineConfig } from 'vite';

export default defineConfig({
  preview: {
    host: '0.0.0.0',
    port: 4321,
    allowedHosts: ['blog.mentora.tr']
  }
});