base_path=

python $base_path/OpenNMT-py/preprocess.py \
-train_src $base_path/ \
-train_tgt $base_path/ \
-valid_src $base_path/ \
-valid_tgt $base_path/ \
-save_data $base_path/baseline \
-src_seq_length 10000 \
-tgt_seq_length 10000 \
-src_seq_length_trunc 999 \
-tgt_seq_length_trunc 999 \
-dynamic_dict \
-share_vocab
