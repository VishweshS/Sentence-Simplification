train_src=""
train_tgt=""

python generate_vocab.py \
    --train_src ${train_src} \
    --train_tgt ${train_tgt} \
    --output "vocab.bin"
