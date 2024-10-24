datapath=C:\Users\ATL\Downloads\GLASS_main\GLASS-main\datasets\WFDD
augpath=C:\Users\ATL\Downloads\GLASS_main\GLASS-main\datasets\aug_file
classes=('grey_cloth' 'grid_cloth' 'yellow_cloth' 'pink_flower')
flags=($(for class in "${classes[@]}"; do echo '-d '"${class}"; done))

cd ..
python main.py \
    --gpu 0 \
    --seed 0 \
    --test ckpt \
  net \
    -b wideresnet50 \
    -le layer2 \
    -le layer3 \
    --pretrain_embed_dimension 1536 \
    --target_embed_dimension 1536 \
    --patchsize 3 \
    --meta_epochs 640 \
    --eval_epochs 1 \
    --dsc_layers 2 \
    --dsc_hidden 1024 \
    --pre_proj 1 \
    --mining 1 \
    --noise 0.015 \
    --radius 0.75 \
    --p 0.5 \
    --step 20 \
    --limit 392 \
  dataset \
    --distribution 0 \
    --mean 0.5 \
    --std 0.1 \
    --fg 1 \
    --rand_aug 1 \
    --batch_size 8 \
    --resize 288 \
    --imagesize 288 "${flags[@]}" wfdd $datapath $augpath




    $datapath = "C:\Users\ATL\Downloads\GLASS_main\GLASS-main\datasets\WFDD"
    $augpath = "C:\Users\ATL\Downloads\GLASS_main\GLASS-main\datasets\aug_file"



# main command to run code :- using GPU =>
# INFO:_main_:Command line arguments:=> python main.py --gpu 0 --seed 0 --test ckpt net -b wideresnet50 -le layer2 -le layer3 --pretrain_embed_dimension 1536 --target_embed_dimension 1536 --patchsize 3 --meta_epochs 640 --eval_epochs 1 --dsc_layers 2 --dsc_hidden 1024 --pre_proj 1 --mining 1 --noise 0.015 --radius 0.75 --p 0.5 --step 20 --limit 392 dataset --distribution 0 --mean 0.5 --std 0.1 --fg 1 --rand_aug 1 --batch_size 8 --resize 288 --imagesize 288 -dgrey_cloth -dgrid_cloth -dyellow_cloth -dpink_flower wfdd C:\Users\ATL\Downloads\GLASS_main\GLASS-main\datasets\WFDD C:\Users\ATL\Downloads\GLASS_main\GLASS-main\datasets\aug_file

