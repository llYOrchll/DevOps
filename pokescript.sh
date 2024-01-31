#!/bin/bash

pokeName=$1

pokeApi="https://pokeapi.co/api/v2/pokemon/$pokeName"
response=$(curl -s "$pokeApi" | jq '.')

pokeId=$(echo "$response" | jq -r '.id')
pokeName=$(echo "$response" | jq -r '.name')
pokeWeight=$(echo "$response" | jq -r '.weight')
pokeHeight=$(echo "$response" | jq -r '.height')
pokeOrder=$(echo "$response" | jq -r '.order')

echo "Pokemon data:"
echo "ID: $pokeId"
echo "Name: $pokeName"
echo "Weight: $pokeWeight"
echo "Height: $pokeHeight"
echo "Order: $pokeOrder"
