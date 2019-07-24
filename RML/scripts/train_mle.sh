train_src=""
train_tgt=""
dev_src=""
dev_tgt=""
test_src=""
test_tgt=""

model_name=""
mkdir ${model_name}
touch ${model_name}/${model_name}.logs.txt
logs_path="/${model_name}/${model_name}.logs.txt"

python run.py \
    --cuda \
    --mode train \
    --vocab vocab.bin \
    --save_to /${model_name}/${model_name} \
    --valid_niter 1000 \
    --log_every 50 \
    --log_file ${logs_path} \
    --valid_metric 'ppl' \
    --max_niter 100000 \
    --beam_size 5 \
    --batch_size 8 \
    --sample_size 10 \
    --hidden_size 256 \
    --embed_size 256 \
    --uniform_init 0.1 \
    --dropout 0.3 \
    --clip_grad 5.0 \
    --lr_decay 0.5 \
    --train_src ${train_src} \
    --train_tgt ${train_tgt} \
    --dev_src ${dev_src} \
    --dev_tgt ${dev_tgt} \
