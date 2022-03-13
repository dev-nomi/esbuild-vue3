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