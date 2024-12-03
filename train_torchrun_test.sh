# for 40GB A100 DiT-XL/2 OOM

# 4 cards and DiT-L/4
# export CUDA_VISIBLE_DEVICES=0,1,2,3 
# torchrun --nnodes=1 --nproc_per_node=4 train_torchrun.py --global-batch-size 256 --model DiT-L/4 --data-path data/imagenet-1k/train

# 4 cards and DiT-B/2
export CUDA_VISIBLE_DEVICES=4,5,6,7
torchrun --nnodes=1 --nproc_per_node=4 train_torchrun_test.py --global-batch-size 256 --model DiT-B/2 --data-path data/imagenet-1k/train