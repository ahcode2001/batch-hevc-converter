# Hardware-Accelerated Batch HEVC Converter

A lightweight, drag-and-drop Windows batch script that leverages native FFmpeg to bulk-convert AVC/AV1 video files into highly efficient HEVC (H.265) format. 

Configured specifically to utilize the `hevc_amf` encoder, this script takes full advantage of AMD Radeon graphics hardware to bypass CPU bottlenecks. It is perfectly suited for rapidly compressing massive, multi-gigabyte gameplay replays from high-framerate titles like Counter-Strike 2, Apex Legends, and Warzone into manageable file sizes without noticeable quality loss.

## ✨ Features
* **Drag-and-Drop Interface:** No command line knowledge required for daily use.
* **Hardware Acceleration:** Uses AMD's AMF encoder (`hevc_amf`) for blazingly fast conversion speeds.
* **Unlimited File Size:** Easily processes 2GB+ files that would typically crash browser-based WebAssembly converters.
* **Batch Processing:** Drop one file or fifty files at once; the script queues them automatically.
* **Audio Passthrough:** Re-encodes audio to standard AAC (128k) to ensure cross-device compatibility.

## ⚙️ Prerequisites
This script requires **FFmpeg** to be installed natively on your Windows machine. 

The easiest way to install it is via the Windows Command Prompt or PowerShell:
```cmd
winget install ffmpeg
```
## 🚀 How to Use
* Download or clone the Batch_HEVC_Converter.bat file to your computer.
* Highlight the video file(s) you want to convert.
* Drag the video files and drop them directly onto the .bat file icon.
* A command window will open, displaying the real-time processing status.
* Once complete, your new H.265 files will be located in an auto-generated HEVC_Output folder situated in the same directory as the script.

## 🛠️ Customization
* If you need to tweak the conversion parameters, right-click the .bat file and open it in a text editor (like VS Code or Notepad).
* To change quality/speed: Modify the -quality speed flag.
* NVIDIA Users: If running this on a machine with a secondary NVIDIA GPU, change -c:v hevc_amf to -c:v hevc_nvenc to utilize the NVENC hardware encoder instead.
