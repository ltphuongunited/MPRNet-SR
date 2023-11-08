# MPRNet-SR

A PyTorch implementation of MPRNet from paper ["MPRNet: Multi-Path Residual Network for Lightweight Image Super Resolution"](https://arxiv.org/abs/2011.04566) by Armin Mehri, Parichehr B.Ardakani and Angel D.Sappa. 

### Download dataset
```
bash download_dataset.sh
```

### Install package

```
pip install -r requirements.txt
```

```
export PYTHONPATH=$PWD
```

### Training

```
python src/trainer.py --config-name=colab_training seed=1508 optimizer.halving_steps=400000
```

### Testing
```
python src/tester.py --config-name=colab_testing seed=1507 test_dataset.path=data/valid testing.mode=model test_dataset.degradation=bicubic test_dataset.scale=4 wandb.run_name=Test_MPRNet_div2k_val_x4
```

Lastest checkpoint in trained_models/checkpoints