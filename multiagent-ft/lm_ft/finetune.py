from llama2_flash_attn_monkey_patch import (
    replace_llama_attn_with_flash_attn,
)

replace_llama_attn_with_flash_attn()

from lm_ft import train

if __name__ == "__main__":
    train()
