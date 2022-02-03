variable "bot_token" {
  description = "Telegram bot token"
  type        = string
  default     = ""
}

variable "chat_ids" {
  description = "Chat ids separated by commas"
  type        = string
  default     = ""
}

variable "hosts" {
  description = "Host urls separated by commas"
  type        = string
  default     = ""
}

variable "schedule" {
  description = "Website check schedule"
  type        = string
  default     = "* * * * *"
}
