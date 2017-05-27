@echo off
set FXC="C:\Program Files (x86)\Windows Kits\10\bin\x86\fxc.exe" -nologo
if not exist data mkdir data
%FXC% /T vs_4_0 /E Vertex /Fo data/vertex.fx shader/triangle.hlsl
%FXC% /T ps_4_0 /E Pixel /Fo data/pixel.fx shader/triangle.hlsl
