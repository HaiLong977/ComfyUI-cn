<div align="center">

# ComfyUI 汉化
**最强大的模块化 AI 内容创作引擎。**


[![Website][website-shield]][website-url]
[![Dynamic JSON Badge][discord-shield]][discord-url]
[![Twitter][twitter-shield]][twitter-url]
[![Matrix][matrix-shield]][matrix-url]
<br>
[![][github-release-shield]][github-release-link]
[![][github-release-date-shield]][github-release-link]
[![][github-downloads-shield]][github-downloads-link]
[![][github-downloads-latest-shield]][github-downloads-link]

[matrix-shield]: https://img.shields.io/badge/Matrix-000000?style=flat&logo=matrix&logoColor=white
[matrix-url]: https://app.element.io/#/room/%23comfyui_space%3Amatrix.org
[website-shield]: https://img.shields.io/badge/ComfyOrg-4285F4?style=flat
[website-url]: https://www.comfy.org/
<!-- Workaround to display total user from https://github.com/badges/shields/issues/4500#issuecomment-2060079995 -->
[discord-shield]: https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscord.com%2Fapi%2Finvites%2Fcomfyorg%3Fwith_counts%3Dtrue&query=%24.approximate_member_count&logo=discord&logoColor=white&label=Discord&color=green&suffix=%20total
[discord-url]: https://discord.com/invite/comfyorg
[twitter-shield]: https://img.shields.io/twitter/follow/ComfyUI
[twitter-url]: https://x.com/ComfyUI

[github-release-shield]: https://img.shields.io/github/v/release/comfyanonymous/ComfyUI?style=flat&sort=semver
[github-release-link]: https://github.com/comfyanonymous/ComfyUI/releases
[github-release-date-shield]: https://img.shields.io/github/release-date/comfyanonymous/ComfyUI?style=flat
[github-downloads-shield]: https://img.shields.io/github/downloads/comfyanonymous/ComfyUI/total?style=flat
[github-downloads-latest-shield]: https://img.shields.io/github/downloads/comfyanonymous/ComfyUI/latest/total?style=flat&label=downloads%40latest
[github-downloads-link]: https://github.com/comfyanonymous/ComfyUI/releases

<img width="1590" height="795" alt="ComfyUI Screenshot" src="https://github.com/user-attachments/assets/36e065e0-bfae-4456-8c7f-8369d5ea48a2" />
<br>
</div>

ComfyUI 是面向视觉创作者的 AI 创作引擎，让你掌控每一个模型、每一个参数和每一个输出。其强大而模块化的节点图界面，帮助创作者生成图像、视频、3D 模型、音频等内容……
- ComfyUI 原生支持最新的开源前沿模型。
- 它是目前全球针对扩散模型优化得最好的推理引擎，专注于本地消费级硬件。
- 借助先进的异步权重流式加载技术，即使运行最大的开源模型，也只需 4GB 显存 + 8GB 内存即可相对快速地运行（充分压榨 GPU 算力）。
- [合作方节点](https://docs.comfy.org/tutorials/partner-nodes/overview#partner-nodes) 提供对顶级闭源模型的访问，例如 Nano Banana、Seedance、Hunyuan3D 等。
- 支持 Windows、Linux 和 macOS，可本地使用我们的[桌面应用](https://www.comfy.org/download)、[便携版安装](#安装)，也可使用我们的[云端](https://www.comfy.org/cloud)。
- 借助 App Mode（应用模式），最复杂的工作流也能通过简洁的界面呈现。
- 通过 API 端点，可无缝集成到生产流程中。

## 快速开始

### 本地

#### [桌面应用](https://www.comfy.org/download)
- 最简单的上手方式。
- 支持 Windows 与 macOS。

#### [手动安装](#手动安装windowslinux)
支持所有操作系统和 GPU 类型（NVIDIA、AMD、Intel、Apple Silicon、Ascend）。

### 云端

#### [Comfy Cloud](https://www.comfy.org/cloud)
- 官方付费云版本，适合没有本地硬件的用户。

## 示例
了解 ComfyUI 能做什么：[较新的模板工作流](https://comfy.org/workflows) 或旧的[示例工作流](https://comfyanonymous.github.io/ComfyUI_examples/)。

## 功能特性
- 可视化节点图，无需编写代码即可构建并复用图像、视频、音频、3D 和文本工作流。
- 可复用的子图、工作流模板、App Mode，以及用于将工作流集成到应用中的本地 API。
- 高效的本地执行：异步排队、局部图重执行、智能显存与内存管理、模型卸载，并支持量化模型。
- 广泛的原生模型支持。以下仅为代表性列表；可浏览[工作流库](https://comfy.org/workflows/)获取持续维护、开箱即用的模板。
  - [图像生成](https://comfy.org/workflows/tag/text-to-image/)：Stable Diffusion 1.5、SDXL、SD3.5、Flux.1、Flux.2、Qwen Image、Z-Image、Hunyuan Image 2.1、HiDream、Lumina Image 2.0、Chroma、Anima、LongCat Image、Ideogram 4、Krea 2、MageFlow、Microsoft Lens、PixelDiT、Kandinsky 5、Ernie Image 和 Moss Image。
  - [图像编辑](https://comfy.org/workflows/tag/image-edit/)：Flux Kontext、Flux.2 Klein、Qwen Image Edit、HiDream E1.1 和 O1、OmniGen2、Boogu、JoyImage Edit、MageFlow Edit 和 LongCat Image Edit。
  - [视频生成](https://comfy.org/workflows/tag/video-generation/)：Wan 2.1 和 2.2、LTX-Video 2 和 2.3、HunyuanVideo 1.5、Kandinsky 5 Video、CogVideoX、Cosmos Predict2、Bernini-R、SCAIL 2 和 Mochi。
  - [音视频生成](https://comfy.org/workflows/)：MiniMax H3 和 LTX-AV。
  - [音频生成](https://comfy.org/workflows/tag/text-to-audio/)：ACE-Step 1.5、Stable Audio 3、MiniMax Music 3 和 Yue 2。
  - [3D 与视觉](https://comfy.org/workflows/)：Hunyuan3D 2.1、TripoSplat、SeedVR2、SUPIR、Depth Anything 3、MoGe、SAM 3 和 3.1、RT-DETRv4 和 BiRefNet。
  - [文本生成](https://comfy.org/workflows/tag/text-generation/)：Gemma 3 和 4、Qwen3、Qwen3.5 和 Qwen3-VL，包括多模态输入。
- 可从受支持的模型格式加载完整 checkpoint，或单独加载扩散模型、VAE、文本编码器、LoRA、ControlNet、适配器和放大器。
- 内置工具：局部重绘、扩图、参考条件、蒙版与合成、模型合并、放大、帧插值、分割、深度估计和媒体处理。
- 工作流可保存和加载为 JSON，也可从受支持的生成媒体中恢复完整工作流与种子。
- 完全可离线运行：核心功能不会主动下载任何内容，除非你主动请求。使用 `--offline` 可禁用可选的付费 [Comfy API 节点](https://docs.comfy.org/tutorials/api-nodes/overview)并强制所有内置功能保持离线；或使用 `--disable-partner-nodes` 仅禁用 API 节点。
- 通过自定义节点扩展 ComfyUI
- 通过 [`extra_model_paths.yaml`](extra_model_paths.yaml.example) 配置额外的模型目录。
- 支持保存和加载高位深图像与视频：支持 16 位 PNG、32 位 EXR、10 位 AVIF 等，更多格式持续增加。
- 支持保存和加载多种格式的 HDR 视频和图像。


## 发布流程

ComfyUI 遵循每周一发布的大致节奏，但遇到模型发布或代码库大改时会经常调整。项目由三个相互关联的仓库组成：

1. **[ComfyUI Core](https://github.com/comfyanonymous/ComfyUI)**
   - 大约每 2 周发布一个新的主稳定版本（例如 v0.7.0）。
   - 从 v0.4.0 起，补丁版本用于将修复回合到当前稳定版。
   - 次版本号用于 master 分支上的发布。
   - 在不适合回合的情况下，master 分支上的发布仍可能使用补丁版本号。
   - 稳定版标签之外的提交可能非常不稳定，并导致许多自定义节点失效。
   - 作为桌面版发布的基础

2. **[Comfy Desktop](https://github.com/Comfy-Org/Comfy-Desktop)**
   - 使用最新稳定核心版本构建新发布

3. **[ComfyUI Frontend](https://github.com/Comfy-Org/ComfyUI_frontend)**
   - 每 2 周以上，前端更新会合并到核心仓库
   - 即将发布的核心版本会冻结功能
   - 开发工作继续进入下一个发布周期

## 快捷键

| 按键                            | 说明                                                                                                        |
|------------------------------------|--------------------------------------------------------------------------------------------------------------------|
| `Ctrl` + `Enter`                      | 将当前图加入生成队列                                                                              |
| `Ctrl` + `Shift` + `Enter`              | 将当前图作为首个任务加入生成队列                                                                     |
| `Ctrl` + `Alt` + `Enter`                | 取消当前生成                                                                                          |
| `Ctrl` + `Z`/`Ctrl` + `Y`                 | 撤销/重做                                                                                                          |
| `Ctrl` + `S`                          | 保存工作流                                                                                                      |
| `Ctrl` + `O`                          | 加载工作流                                                                                                      |
| `Ctrl` + `A`                          | 全选节点                                                                                                   |
| `Alt `+ `C`                           | 折叠/展开所选节点                                                                                 |
| `Ctrl` + `M`                          | 静音/取消静音所选节点                                                                                         |
| `Ctrl` + `B`                           | 绕过所选节点（效果等同于从图中移除该节点并重新连接线路）            |
| `Delete`/`Backspace`                   | 删除所选节点                                                                                              |
| `Ctrl` + `Backspace`                   | 删除当前图                                                                                           |
| `Space`                              | 按住并移动光标时平移画布                                                             |
| `Ctrl`/`Shift` + `Click`                 | 将点击的节点加入选择                                                                                      |
| `Ctrl` + `C`/`Ctrl` + `V`                  | 复制并粘贴所选节点（不保留指向未选中节点输出的连接）                     |
| `Ctrl` + `C`/`Ctrl` + `Shift` + `V`          | 复制并粘贴所选节点（保留未选中节点输出到粘贴节点输入的连接） |
| `Shift` + `Drag`                       | 同时移动多个所选节点                                                                      |
| `Ctrl` + `D`                           | 加载默认图                                                                                                 |
| `Alt` + `+`                          | 画布放大                                                                                                     |
| `Alt` + `-`                          | 画布缩小                                                                                                    |
| `Ctrl` + `Shift` + LMB + Vertical drag | 画布放大/缩小                                                                                                 |
| `P`                                  | 固定/取消固定所选节点                                                                                           |
| `Ctrl` + `G`                           | 将所选节点编组                                                                                               |
| `Q`                                 | 显示/隐藏队列                                                                                     |
| `H`                                 | 显示/隐藏历史记录                                                                                       |
| `R`                                 | 刷新图                                                                                                      |
| `F`                                 | 显示/隐藏菜单                                                                                                      |
| `.`                                  | 缩放到所选内容（未选中时为整张图）                                                        |
| Double-Click LMB                   | 打开节点快速搜索面板                                                                                     |
| `Shift` + Drag                       | 同时移动多根连线                                                                                        |
| `Ctrl` + `Alt` + LMB                   | 断开点击插槽上的所有连线                                                                             |

macOS 用户也可以将 `Ctrl` 替换为 `Cmd`

# 安装

## Windows 与 Mac

我们强烈推荐使用[桌面应用](https://comfy.org/download)：

### [下载链接](https://comfy.org/download)

对于新用户来说，桌面应用是使用 ComfyUI 最简单、最好的方式。

## Windows 便携版

Windows 提供了便携独立版本，可在 Nvidia GPU 或仅 CPU 上运行。不建议普通用户使用，普通用户应使用上面的桌面应用。

[直接下载链接（Nvidia）](https://github.com/comfyanonymous/ComfyUI/releases/latest/download/ComfyUI_windows_portable_nvidia.7z)

下载后，使用 [7-Zip](https://7-zip.org) 或较新 Windows 版本自带的资源管理器解压并运行。对于较小的模型，通常只需将 checkpoint（巨大的 ckpt/safetensors 文件）放入：ComfyUI\models\checkpoints，但许多较大的模型包含多个文件。请务必按照说明将它们放入 ComfyUI\models\ 的相应子目录。

如果解压遇到问题，右键文件 -> 属性 -> 解除锁定

当前便携版附带 Python 3.13 和 PyTorch CUDA 13.0。如果无法启动，请更新 Nvidia 驱动。

#### 所有官方便携版下载：

[适用于 AMD GPU 的便携版](https://github.com/comfyanonymous/ComfyUI/releases/latest/download/ComfyUI_windows_portable_amd.7z)

[适用于 Intel GPU 的便携版](https://github.com/comfyanonymous/ComfyUI/releases/latest/download/ComfyUI_windows_portable_intel.7z)

[适用于 Nvidia GPU 的便携版](https://github.com/comfyanonymous/ComfyUI/releases/latest/download/ComfyUI_windows_portable_nvidia.7z)（支持 20 系列及以上）。

[适用于 Nvidia GPU、PyTorch CUDA 12.6 与 Python 3.12 的便携版](https://github.com/comfyanonymous/ComfyUI/releases/latest/download/ComfyUI_windows_portable_nvidia_cu126.7z)（支持 Nvidia 10 系列及更旧的 GPU，请勿在 20 系列及以上的新 GPU 上使用）。

#### 如何在另一个 UI 与 ComfyUI 之间共享模型？

参见[配置文件](extra_model_paths.yaml.example)设置模型搜索路径。在 Windows 独立版中，该文件位于 ComfyUI 目录下。将其重命名为 extra_model_paths.yaml，并用你喜欢的文本编辑器编辑。


## [comfy-cli](https://docs.comfy.org/comfy-cli/getting-started)

你可以使用 comfy-cli 安装并启动 ComfyUI：
```bash
pip install comfy-cli
comfy install
```

## 手动安装（Windows、Linux）

Python 3.14 可用，但部分自定义节点可能存在问题。free-threaded 版本也可用，但部分依赖会启用 GIL，因此并非完全支持。

Python 3.13 的支持非常好。如果在 3.13 上遇到某些自定义节点依赖问题，可以尝试 3.12。

torch 2.7 仅提供最低限度支持，强烈建议使用更新版本。在 Nvidia 20 系列及以上显卡上必须使用 cu130 或更高版本的 PyTorch。部分功能和优化可能只在较新版本上生效。除非最新 PyTorch 主版本发布不足 2 周，否则通常建议使用最新主版本配合最新 CUDA 版本。如果你的 PyTorch 已超过 6 个月，请更新。

### 操作步骤：

Git clone 本仓库。

将你的 SD checkpoint（巨大的 ckpt/safetensors 文件）放入：models/checkpoints

将 VAE 放入：models/vae


### AMD GPU（Linux）

如果尚未安装 ROCm 和 PyTorch，AMD 用户可以通过 pip 安装，以下命令用于安装稳定版：

```pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/rocm7.2```

以下命令用于安装 ROCm 7.2 的 nightly 版本，可能带来一些性能提升：

```pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/rocm7.2```


### AMD GPU（Windows，ROCm 10.0）

使用 AMD 的[多架构 PyTorch 包](https://rocm.docs.amd.com/projects/ai-ecosystem/en/latest/frameworks/pytorch/install.html)。`device-*` extras 会自动安装你的 GPU 内核及匹配的 ROCm 运行时，无需单独安装 HIP SDK。

请使用 Windows 11、最新的 [AMD 显卡驱动](https://www.amd.com/en/support/download/drivers.html) 以及 64 位 Python 3.13。

下面的安装命令使用 `device-all` 安装所有受支持 GPU 的内核。为减少下载体积和磁盘占用，可选择将**两处** `device-all` 都替换为你 GPU 对应的目标：

| GPU | Device extra |
| --- | --- |
| RX 9070 / XT、Radeon AI PRO R9700 | `device-gfx1201` |
| RX 9060 / XT | `device-gfx1200` |
| RX 7900 XT / XTX | `device-gfx1100` |
| RX 7700 XT / 7800 XT | `device-gfx1101` |
| RX 7600 / XT | `device-gfx1102` |
| Ryzen AI Max / Max+（Strix Halo） | `device-gfx1151` |

**注意：** 此表仅列举示例。未列出的 GPU 仍可能受支持：受支持的架构包括 RDNA 2、RDNA 3、RDNA 3.5 和 RDNA 4。保留 `device-all` 可安装所有受支持目标的内核。其他型号请参见 AMD 的 [GPU 目标表](https://github.com/ROCm/TheRock/blob/main/RELEASES.md#gfx-target-lookup-table) 与 [ROCm 兼容性矩阵](https://rocm.docs.amd.com/en/docs-10.0.0/compatibility/compatibility-matrix.html)。

**ROCm 10.0.0 与 PyTorch 2.13：**

```bat
pip install --index-url https://stable.repo.amd.com/rocm/whl-next/ "torch[device-all]==2.13.0+rocm10.0.0" "torchvision[device-all]==0.28.0+rocm10.0.0" "torchaudio==2.11.0.2+rocm10.0.0"
```

### Intel GPU（Windows 与 Linux）

Intel Arc GPU 用户可以通过 pip 安装支持 torch.xpu 的原生 PyTorch。更多信息见[此处](https://pytorch.org/docs/main/notes/get_start_xpu.html)

1. 安装 PyTorch xpu，使用以下命令：

```pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/xpu```

以下命令用于安装 PyTorch xpu nightly 版本，可能带来一些性能提升：

```pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/xpu```

### NVIDIA

Nvidia 用户应使用以下命令安装稳定版 PyTorch：

```pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu130```

以下命令用于安装 PyTorch nightly 版本，可能带来一些性能提升。

```pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu132```

#### 疑难排查

如果遇到 "Torch not compiled with CUDA enabled" 错误，请先卸载 torch：

```pip uninstall torch```

再用上面的命令重新安装。

### 依赖

在 ComfyUI 目录中打开终端，安装依赖：

```pip install -r requirements.txt```

完成以上步骤后，所有依赖应已安装完毕，可以开始运行 ComfyUI。

### 其他：

#### Apple Mac Silicon

你可以在运行较新 macOS 的 Apple Mac Silicon（M1、M2、M3 或 M4）上安装 ComfyUI。

1. 安装 PyTorch nightly。具体步骤请阅读 Apple 开发者指南 [Accelerated PyTorch training on Mac](https://developer.apple.com/metal/pytorch/)（务必安装最新的 PyTorch nightly）。
1. 按 [ComfyUI 手动安装](#手动安装windowslinux)中的 Windows/Linux 步骤操作。
1. 安装 ComfyUI [依赖](#依赖)。如果你还装了其他 Stable Diffusion UI，[可以复用这些依赖](#i-already-have-another-ui-for-stable-diffusion-installed-do-i-really-have-to-install-all-of-these-dependencies)。
1. 运行 `python main.py` 启动 ComfyUI

> **注意**：记得将模型、VAE、LoRAs 等放入对应的 Comfy 目录，详见 [ComfyUI 手动安装](#手动安装windowslinux)。

#### 华为昇腾 NPU

适用于兼容华为 Ascend Extension for PyTorch（torch_npu）的模型。开始前，请确保环境满足[安装](https://ascend.github.io/docs/sources/ascend/quick_install.html)页面列出的前提条件。以下是按平台和安装方式整理的步骤：

1. 如有必要，先按 torch-npu 安装页面的说明，安装推荐的或更新的 Linux 内核版本。
2. 按照对应平台的说明安装 Ascend Basekit，其中包括驱动、固件和 CANN。
3. 按[安装](https://ascend.github.io/docs/sources/pytorch/install.html#pytorch)页面的平台相关说明安装 torch-npu 所需软件包。
4. 最后按 Linux 的 [ComfyUI 手动安装](#手动安装windowslinux)指南操作。所有组件安装完成后，即可按前述方式运行 ComfyUI。

#### 寒武纪 MLU

适用于兼容 Cambricon Extension for PyTorch（torch_mlu）的模型。以下是按平台和安装方式整理的步骤：

1. 按[安装](https://www.cambricon.com/docs/sdk_1.15.0/cntoolkit_3.7.2/cntoolkit_install_3.7.2/index.html)页面的平台相关说明安装 Cambricon CNToolkit
2. 按[安装](https://www.cambricon.com/docs/sdk_1.15.0/cambricon_pytorch_1.17.0/user_guide_1.9/index.html)页面的说明安装 PyTorch（torch_mlu）
3. 运行 `python main.py` 启动 ComfyUI

#### 天数智芯 Iluvatar Corex

适用于兼容 Iluvatar Extension for PyTorch 的模型。以下是按平台和安装方式整理的步骤：

1. 按[安装](https://support.iluvatar.com/#/DocumentCentre?id=1&nameCenter=2&productId=520117912052801536)页面的平台相关说明安装 Iluvatar Corex Toolkit
2. 运行 `python main.py` 启动 ComfyUI


## [ComfyUI-Manager](https://github.com/Comfy-Org/ComfyUI-Manager/tree/manager-v4)

**ComfyUI-Manager** 是一个扩展，可让你轻松安装、更新和管理 ComfyUI 的自定义节点。

### 配置

1. 安装 Manager 依赖：
   ```bash
   pip install -r manager_requirements.txt
   ```

2. 启动 ComfyUI 时使用 `--enable-manager` 参数启用 Manager：
   ```bash
   python main.py --enable-manager
   ```

### 命令行选项

| 参数 | 说明 |
|------|-------------|
| `--enable-manager` | 启用 ComfyUI-Manager |
| `--enable-manager-legacy-ui` | 使用旧版 Manager 界面而非新界面（隐含 `--enable-manager`） |
| `--disable-manager-ui` | 禁用 Manager 界面和端点，但保留安全检查、计划安装完成等后台功能（需要 `--enable-manager`） |


# 运行

```python main.py```

### 官方 ROCm 不支持的 AMD 显卡

如果遇到问题，可尝试用以下命令运行：

对于 6700、6600 及可能的其他 RDNA2 或更旧显卡：```HSA_OVERRIDE_GFX_VERSION=10.3.0 python main.py```

对于 AMD 7600 及可能的其他 RDNA3 显卡：```HSA_OVERRIDE_GFX_VERSION=11.0.0 python main.py```

### AMD ROCm 提示

可以尝试设置环境变量 `PYTORCH_TUNABLEOP_ENABLED=1`，这可能会加速运行，但代价是首次运行非常慢。

# 说明

只有图中所有输入都正确的输出部分才会被执行。

每次执行时只有发生变化的部分才会执行；如果提交相同的图两次，只有第一次会执行。如果只修改图的最后一部分，则只有你修改的部分及依赖它的部分会执行。

将生成的 PNG 拖到网页上或加载它，即可获得完整工作流，包括生成时使用的种子。

你可以用 () 改变单词或短语的强调权重，例如：(good code:1.2) 或 (bad code:0.8)。() 的默认强调系数为 1.1。若要在实际提示词中使用 () 字符，请转义为 \\( 或 \\)。

你可以使用 {day|night} 实现通配符/动态提示词。使用该语法时，"{wild|card|test}" 会在每次排队提示词时，被前端随机替换为 "wild"、"card" 或 "test"。若要在实际提示词中使用 {} 字符，请转义为：\\{ 或 \\}。

动态提示词还支持 C 风格注释，例如 `// comment` 或 `/* comment */`。

要在文本提示词中使用 textual inversion 概念/嵌入，请将它们放入 models/embeddings 目录，并在 CLIPTextEncode 节点中这样使用（可省略 .pt 扩展名）：

```embedding:embedding_filename.pt```


## 如何显示高质量预览？

使用 ```--preview-method auto``` 启用预览。

默认安装包含一个低分辨率的快速 latent 预览方法。要使用 [TAESD](https://github.com/madebyollin/taesd) 启用更高质量的预览，请下载 [taesd_decoder.pth、taesdxl_decoder.pth、taesd3_decoder.pth 和 taef1_decoder.pth](https://github.com/madebyollin/taesd/)，并将它们放入 `models/vae_approx` 文件夹。安装完成后，重启 ComfyUI 并使用 `--preview-method taesd` 启动，即可启用高质量预览。

## 如何使用 TLS/SSL？
通过以下命令生成自签名证书（不适用于共享/生产环境）和密钥：`openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 3650 -nodes -subj "/C=XX/ST=StateName/L=CityName/O=CompanyName/OU=CompanySectionName/CN=CommonNameOrHostname"`

使用 `--tls-keyfile key.pem --tls-certfile cert.pem` 启用 TLS/SSL，应用将可通过 `https://...` 而非 `http://...` 访问。

> 注意：Windows 用户可以使用 [alexisrolland/docker-openssl](https://github.com/alexisrolland/docker-openssl) 或[第三方二进制发行版](https://wiki.openssl.org/index.php/Binaries)来运行上面的示例命令。
<br/><br/>如果使用容器，请注意 `-v` 卷挂载可以是相对路径，因此 `... -v ".\:/openssl-certs" ...` 会在当前命令提示符或 PowerShell 终端所在目录创建密钥与证书文件。

## 支持与开发者频道

[Discord](https://comfy.org/discord)：可尝试 #help 或 #feedback 频道。

[Matrix 空间：#comfyui_space:matrix.org](https://app.element.io/#/room/%23comfyui_space%3Amatrix.org)（类似 Discord，但开源）。

另见：[https://www.comfy.org/](https://www.comfy.org/)

> _psst —— 我们正在招聘！_ 一起打造 ComfyUI：[comfy.org/careers](https://www.comfy.org/careers)

## 前端开发

自 2024 年 8 月 15 日起，我们已切换到新的前端，目前托管在独立仓库：[ComfyUI Frontend](https://github.com/Comfy-Org/ComfyUI_frontend)。编译后的 JS 文件（来自 TS/Vue）发布到 [PyPI](https://pypi.org/project/comfyui-frontend-package)，并作为依赖安装在 ComfyUI 中。

### 报告问题与功能请求

任何与前端相关的 bug、问题或功能请求，请使用 [ComfyUI Frontend 仓库](https://github.com/Comfy-Org/ComfyUI_frontend)。这将帮助我们更高效地管理和处理前端相关问题。

### 使用最新前端

新前端现已成为 ComfyUI 的默认选择。但请注意：

1. 主 ComfyUI 仓库中的前端每两周更新一次。
2. 独立的前端仓库提供每日发布版本。

要使用最新的前端版本：

1. 使用以下命令行参数启动 ComfyUI 以获取最新每日版本：

   ```
   --front-end-version Comfy-Org/ComfyUI_frontend@latest
   ```

2. 如需特定版本，请将 `latest` 替换为所需版本号：

   ```
   --front-end-version Comfy-Org/ComfyUI_frontend@1.2.2
   ```

这样你就能轻松在稳定的双周版本与最新的每日更新之间切换，甚至可为测试目的指定特定版本。

# 常见问题

### 我应该买哪款 GPU？

[参见此页面获取一些建议](https://github.com/comfyanonymous/ComfyUI/wiki/Which-GPU-should-I-buy-for-ComfyUI)
