export WORKSPACE=$(cd `dirname $0`; dirname `pwd`)
export TASK_DATA_PATH=${WORKSPACE}/data/msra_ner
export MODEL_PATH=bert-base-chinese
export OUTPUT_DIR=${WORKSPACE}/output

python3 ${WORKSPACE}/model/train.py \
    --train_file ${TASK_DATA_PATH}/train.tsv \
    --predict_file ${TASK_DATA_PATH}/test.tsv \
    --model_type bert \
    --model_name_or_path ${MODEL_PATH} \
    --output_dir ${OUTPUT_DIR}/experiments/exp3 \
    --log_dir ${WORKSPACE}/runs \
    --task_name msra\
    --num_labels 7 \
    --max_seq_len 256 \
    --do_train \
    --evaluate_during_training \
    --do_lower_case \
    --per_gpu_train_batch_size 16 \
    --learning_rate 5e-5 \
    --layer_norm_eps 1e-5 \
    --weight_decay 0.01 \
    --num_train_epochs 6 \
    --eval_steps 50 \
    --save_steps 1000 \
    --seed 1
