

MMDetection_PATH=../../../mmdetection/
IMAGE_PATH=../data/images/plant.jpg

python ${MMDetection_PATH}/demo/image_demo.py ${IMAGE_PATH} \
${MMDetection_PATH}/rtmdet_tiny_8xb32-300e_coco.py \
--weights ../models/rtmdet/rtmdet_tiny_8xb32-300e_coco_20220902_112414-78e30dcc.pth \
--device cpu


# python ${MMDetection_PATH}/demo/video_demo.py --out ./emo-result.mp4 \
# ../data/video/demo.mp4 \
# ${MMDetection_PATH}/configs/faster_rcnn/faster-rcnn_r50_fpn_1x_coco.py \
# ../models/faster_rcnn/faster_rcnn_r50_fpn_1x_coco_20200130-047c8118.pth \
# --device cpu

# 无权限
# python ${MMDetection_PATH}/demo/webcam_demo.py
# ${MMDetection_PATH}/configs/faster_rcnn/faster-rcnn_r50_fpn_1x_coco.py \
# ../models/faster_rcnn/faster_rcnn_r50_fpn_1x_coco_20200130-047c8118.pth \
# --device cpu

# python ${MMDetection_PATH}/demo/image_demo.py ${IMAGE_PATH} \
# ${MMDetection_PATH}/configs/centernet/centernet_r18-dcnv2_8xb16-crop512-140e_coco.py \
# --weights ../models/centernet/centernet_resnet18_dcnv2_140e_coco_20210702_155131-c8cd631f.pth \
# --device cpu