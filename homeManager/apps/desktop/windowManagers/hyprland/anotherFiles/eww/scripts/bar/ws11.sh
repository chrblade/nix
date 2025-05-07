#!/usr/bin/env bash

#Ребятушки ненавидящие qwenAI, валите сразу с моих дотов!!!! Это такой пиздец все самим делать, с ним прям легко.
WORKSPACE_COUNT=6

# Получаем активный воркспейс через JSON (надежный метод)
ACTIVE_WS=$(hyprctl activeworkspace -j 2>/dev/null | jq -e -r '.id' 2>/dev/null) || ACTIVE_WS=1

# Шаблоны для элементов
template='{"id":%d,"name":"%d","class":"workspace%s"}'

# Формируем JSON
json=()
for ((i=1; i<=WORKSPACE_COUNT; i++)); do
  suffix=
  (( i == ACTIVE_WS )) && suffix=' active'
  printf -v item "$template" "$i" "$i" "$suffix"
  json+=("$item")
done

# Вывод
IFS=, eval 'echo "[${json[*]}]"'
