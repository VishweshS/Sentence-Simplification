base_path=

model_name=

python $base_path/OpenNMT-py/train.py \
-save_model $base_path/${model_name}/${model_name} \
-data $base_path/baseline \
-global_attention mlp \
-word_vec_size 512 \
-rnn_size 512 \
-layers 1 \
-encoder_type brnn \
-learning_rate 1 \
-train_steps 100000 \
-valid_steps 1000 \
-batch_size 64 \
-early_stopping 5 \
-seed 777 \
-max_grad_norm 2 \
-share_embeddings \
-world_size 1 \
-gpu_ranks 0 \
-save_checkpoint_steps 1000 \
-keep_checkpoint 10 \
-copy_attn \
-log_file "" \
