train_src=""
train_tgt=""

python generate_samples.py \
    --mode sample_ngram \
    --vocab vocab.bin \
    --src ${train_src} \
    --tgt ${train_tgt} \
    --reward 'bleu' \
    --sample_size 10 \
    --output samples.txt
