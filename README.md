# CycleGAN-cartoon-reenactment

## Term Paper topic: Application of Autoencoders and Generative Adversarial Networks in the Problem of Replacing a Human Face in Video


### Objectives
Using CycleGAN for cartoon face reenactment. The model is based on [this PyTorch implementation](https://github.com/junyanz/pytorch-CycleGAN-and-pix2pix). An option was added to allow changing weights of losses in particular areas of pictures (attention on eyes and mouth)

### Train:
- You can download a sample dataset [here](https:https://docs.google.com/uc?export=download&id=140D-RG8JWPGKL_aQ98E100NIRyT5TZNW)

- To train a model please use

```
!python train.py --dataroot 'your dataroot here' --name model_name --model cycle_gan  --checkpoints_dir 'yout dataroot for checkpoints here'
```
You may also specify '--weights simple' to use rectangular weights or '--weights parsed' to use weights of eyes and mouth shape


### Using pre-trained model:
- You can download a pre-trained model [here](https://docs.google.com/uc?export=download&id=1CdriIwPxmiGOMNANbbJBsoZvCoYtmDDs)

### Test:
- To test the model use

```
!python test.py --dataroot 'your dataroot here' --name model_name --model test --no_dropout --model_suffix _A --'yout dataroot for checkpoints here' --num_test 300 --results_dir 'yout dataroot for results here'
```

#### To obtain weights from parsed face you may use face_parsing.ipynb file placed [here](https://github.com/innpei/CycleGAN-cartoon-reenactment/tree/main/face_parsing)

### Links:
Original GitHub: https://github.com/junyanz/pytorch-CycleGAN-and-pix2pix 

Paper: https://arxiv.org/pdf/1611.07004.pdf 

Face parsing: https://github.com/zllrunning/face-parsing.PyTorch

Dataset for face parsing: https://drive.google.com/open?id=1badu11NqxGf6qM3PTTooQDJvQbejgbTv
