# esbuild-vue3

## Prerequisites
- Ruby 3 or higher
- Rails 7 or higher

## Clone this project
```
    git clone https://github.com/dev-nomi/esbuild-vue3.git
```
## Create new rails 7 using esbuild
```
    rails new demo -j esbuild
```
## Create a home page
```
    rails g controller pages home
```
## Change the routes file
> to root pages#home
Location : config/routes.rb

## Run this command
```
    cd demo
    rails app:template LOCATION="esbuild-vue3/install.rb"    
```