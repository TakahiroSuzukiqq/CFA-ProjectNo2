Rails.configuration.stripe = {
  :publishable_key => ENV['STRIPE_PUBLISHABLE'], #stipeのページに行って自分のアカウントから取ってくる
  :secret_key      => ENV['STRIPE_SECRET']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
