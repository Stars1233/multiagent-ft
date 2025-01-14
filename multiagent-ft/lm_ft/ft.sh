torchrun --nproc_per_node=4 --master_port=20001 finetune.py \
    --model_name_or_path mistralai/Mistral-7B-Instruct-v0.2 \
    --data_path data/dummy_conversation.json \
    --bf16 True \
    --output_dir saved_models/dummy_ft \
    --num_train_epochs 2 \
    --per_device_train_batch_size 3 \
    --gradient_accumulation_steps 16 \
    --save_strategy "steps" \
    --save_steps 1200 \
    --save_total_limit 10 \
    --learning_rate 1e-5 \
    --weight_decay 0. \
    --warmup_ratio 0.03 \
    --lr_scheduler_type "cosine" \
    --logging_steps 1 \
    --fsdp "full_shard auto_wrap" \
    --fsdp_transformer_layer_cls_to_wrap 'MistralDecoderLayer' \
    --tf32 True \
    --model_max_length 2048 \
    --gradient_checkpointing True \
    --lazy_preprocess True
