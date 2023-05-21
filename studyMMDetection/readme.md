# 说明
## 本工程位置： 放在mmdetection工程同级目录
## 在提交或者运行推理之前需要先手动split/merge模型
# 1、安装
https://mmdetection.readthedocs.io/zh_CN/latest/get_started.html

## 依赖
``` bash
步骤 1. 创建并激活一个 conda 环境。
conda create --name openmmlab python=3.8 -y
conda activate openmmlab

步骤 2. 基于 PyTorch 官方说明安装 PyTorch。
在 GPU 平台上：
conda install pytorch torchvision -c pytorch
在 CPU 平台上：
conda install pytorch torchvision cpuonly -c pytorch
```

## 安装流程
``` bash
步骤 0. 使用 MIM 安装 MMEngine 和 MMCV。
pip install -U openmim
mim install mmengine
mim install "mmcv>=2.0.0"

步骤 1. 安装 MMDetection。
方案 a：如果你开发并直接运行 mmdet，从源码安装它：
git clone https://github.com/open-mmlab/mmdetection.git
cd mmdetection
pip install -v -e .
"-v" 指详细说明，或更多的输出
"-e" 表示在可编辑模式下安装项目，因此对代码所做的任何本地修改都会生效，从而无需重新安装。
```

## 验证安装
步骤 1. 我们需要下载配置文件和模型权重文件。
``` python
mim download mmdet --config rtmdet_tiny_8xb32-300e_coco --dest .
```
步骤 2. 推理验证。
方案 a：如果你通过源码安装的 MMDetection，那么直接运行以下命令进行验证
``` python
python demo/image_demo.py demo/demo.jpg rtmdet_tiny_8xb32-300e_coco.py --weights rtmdet_tiny_8xb32-300e_coco_20220902_112414-78e30dcc.pth --device cpu
```
你会在当前文件夹中的 outputs/vis 文件夹中看到一个新的图像 demo.jpg，图像中包含有网络预测的检测框。

## 问题解决
在本机/docker环境里经常遇到这个报错
ImportError: libGL.so.1: cannot open shared object file: No such file or directory

https://blog.csdn.net/weixin_42990464/article/details/125203404?spm=1001.2014.3001.5506
https://blog.csdn.net/iLOVEJohnny/article/details/121077928?spm=1001.2014.3001.5506


# inference
studyMMDetection/script/inference.sh



