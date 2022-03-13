say "Template for config vue in rails 7 using esbuild"

copy_file "#{__dir__}/esbuild.config.js", "esbuild.config.js"
run "yarn add vue esbuild-rails esbuild-plugin-vue3"

say "Add build script"
build_script = "node esbuild.config.js"

if (`npx -v`.to_f < 7.1 rescue "Missing")
  say %(Add "scripts": { "build": "#{build_script}" } to your package.json), :green
else
  run %(npm set-script build "#{build_script}")
  run %(yarn build)
end

copy_file "#{__dir__}/main.js", "app/javascript/main.js"

inject_into_file "app/javascript/application.js", "\nimport initVueApp from './main.js'\ninitVueApp()\n"

empty_directory "app/javascript/components"
copy_file "#{__dir__}/components/app.vue", "app/javascript/components/app.vue"


say "Note: Restart your rails server", :bold