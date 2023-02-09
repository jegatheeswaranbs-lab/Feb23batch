#!/bin/bash
sed -i "s#version:.*#version:$1</h2>#g" src/main/webapp/index.jsp
