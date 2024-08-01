import { sveltekit } from "@sveltejs/kit/vite"
import houdini from "houdini/vite"
import { visualizer } from "rollup-plugin-visualizer"
import { defineConfig } from "vitest/config"

export default defineConfig({
  plugins: [
    houdini(),
    sveltekit(),
    visualizer({
      emitFile: true,
      filename: "stats.html",
      gzipSize: true,
    }),
  ],

  server: {
    host: "0.0.0.0",
    port: 3721,
    proxy: {
      "/api": {
        target: "http://0.0.0.0:4728",
        changeOrigin: true,
      },
      "/public": {
        target: "http://0.0.0.0:4728",
        changeOrigin: true,
      },
      "/assets": {
        target: "http://0.0.0.0:4728",
        changeOrigin: true,
      },
      "/openapi": {
        target: "http://0.0.0.0:4728",
        changeOrigin: true,
      },
      "/trpc": {
        target: "http://0.0.0.0:4728",
        changeOrigin: true,
      },
      "/graphql": {
        target: "http://0.0.0.0:4728",
        changeOrigin: true,
      },
    },
  },
  test: {
    include: ["src/**/*.{test,spec}.{js,ts}"],
  },
  clearScreen: false,
})