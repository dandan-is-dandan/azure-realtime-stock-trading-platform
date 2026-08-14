create_table_script
CREATE TABLE [dbo].[account] (
    [agent_id] VARCHAR(50) NOT NULL,
    [strategy_type] VARCHAR(50) NOT NULL,
    [deposit] BIGINT NULL DEFAULT ((10000000)),
    [balance] INT NULL DEFAULT ((0)),
    [avg_buy_price] INT NOT NULL DEFAULT ((0)),
    [locked_deposit] BIGINT NULL DEFAULT ((0)),
    [locked_balance] INT NULL DEFAULT ((0)),
    [realized_pnl] BIGINT NULL DEFAULT ((0)),
    [updated_at] DATETIME2 NULL DEFAULT (sysdatetime())
);
CREATE TABLE [dbo].[account_event_log] (
    [account_event_log_id] BIGINT IDENTITY(1,1) NOT NULL,
    [event_ts_epoch] BIGINT NOT NULL,
    [agent_id] VARCHAR(50) NOT NULL,
    [strategy_type] VARCHAR(50) NOT NULL,
    [deposit] BIGINT NOT NULL,
    [balance] INT NOT NULL,
    [avg_buy_price] INT NOT NULL DEFAULT ((0)),
    [locked_deposit] BIGINT NOT NULL DEFAULT ((0)),
    [locked_balance] INT NOT NULL DEFAULT ((0)),
    [realized_pnl] BIGINT NOT NULL DEFAULT ((0)),
    [account_event_type] VARCHAR(30) NOT NULL,
    [created_at] DATETIME2 NOT NULL DEFAULT (sysdatetime())
);
CREATE TABLE [dbo].[agent_performance] (
    [agent_id] NVARCHAR(MAX) NULL,
    [strategy_type] NVARCHAR(MAX) NULL,
    [final_deposit] BIGINT NULL,
    [final_balance] BIGINT NULL,
    [final_avg_buy_price] BIGINT NULL,
    [realized_pnl] BIGINT NULL,
    [unrealized_pnl] BIGINT NULL,
    [total_asset_value] BIGINT NULL,
    [return_rate] FLOAT NULL,
    [trade_count] BIGINT NOT NULL,
    [rank_no] INT NULL,
    [created_at] DATETIME NOT NULL
);
CREATE TABLE [dbo].[behavior_analysis_result] (
    [analysis_id] BIGINT IDENTITY(1,1) NOT NULL,
    [agent_id] VARCHAR(50) NOT NULL,
    [target_order_id] BIGINT NULL,
    [behavior_type] VARCHAR(50) NULL,
    [behavior_summary] NVARCHAR(1000) NULL,
    [input_feature_json] NVARCHAR(MAX) NULL,
    [model_output_json] NVARCHAR(MAX) NULL,
    [model_name] VARCHAR(100) NULL,
    [model_version] VARCHAR(50) NULL,
    [created_at] DATETIME2 NULL DEFAULT (sysdatetime())
);
CREATE TABLE [dbo].[market_feature] (
    [window_timestamp] DATETIME NULL,
    [interval_type] NVARCHAR(MAX) NOT NULL,
    [return_rate] FLOAT NULL,
    [volatility] FLOAT NOT NULL,
    [buy_order_count] BIGINT NOT NULL,
    [sell_order_count] BIGINT NOT NULL,
    [order_imbalance] FLOAT NOT NULL,
    [sync_index] FLOAT NOT NULL,
    [avg_slippage_rate] FLOAT NOT NULL,
    [lp_trade_count] BIGINT NOT NULL,
    [volume] BIGINT NULL,
    [avg_spread] FLOAT NOT NULL,
    [avg_bid_depth] FLOAT NOT NULL,
    [avg_ask_depth] FLOAT NOT NULL,
    [depth_imbalance] FLOAT NOT NULL,
    [lp_active_ratio] FLOAT NOT NULL,
    [created_at] DATETIME NOT NULL
);
CREATE TABLE [dbo].[market_ohlcv] (
    [ohlcv_id] BIGINT IDENTITY(1,1) NOT NULL,
    [candle_timestamp] DATETIME2 NOT NULL,
    [open_price] INT NULL,
    [high_price] INT NULL,
    [low_price] INT NULL,
    [close_price] INT NULL,
    [volume] INT NULL,
    [trade_count] INT NULL,
    [created_at] DATETIME2 NULL DEFAULT (sysdatetime())
);
CREATE TABLE [dbo].[market_ohlcv_agg] (
    [agg_ohlcv_id] BIGINT IDENTITY(1,1) NOT NULL,
    [candle_timestamp] DATETIME2 NOT NULL,
    [interval_type] VARCHAR(20) NOT NULL,
    [open_price] INT NULL,
    [high_price] INT NULL,
    [low_price] INT NULL,
    [close_price] INT NULL,
    [volume] INT NULL,
    [trade_count] INT NULL,
    [source_start_ts] DATETIME2 NULL,
    [source_end_ts] DATETIME2 NULL,
    [created_at] DATETIME2 NULL DEFAULT (sysdatetime())
);
CREATE TABLE [dbo].[report_output] (
    [report_id] BIGINT IDENTITY(1,1) NOT NULL,
    [agent_id] VARCHAR(50) NOT NULL,
    [target_order_id] BIGINT NULL,
    [analysis_id] BIGINT NULL,
    [report_title] NVARCHAR(200) NULL,
    [report_type] VARCHAR(50) NULL,
    [symbol_name] NVARCHAR(100) NULL,
    [digital_twin_market_no] VARCHAR(50) NULL,
    [analysis_start_date] DATETIME2 NULL,
    [analysis_end_date] DATETIME2 NULL,
    [model_version] VARCHAR(100) NULL,
    [key_metrics_json] NVARCHAR(MAX) NULL,
    [diagnosis_text] NVARCHAR(MAX) NULL,
    [prescription_text] NVARCHAR(MAX) NULL,
    [full_report_text] NVARCHAR(MAX) NULL,
    [blob_name] NVARCHAR(500) NULL,
    [blob_url] NVARCHAR(1000) NULL,
    [created_at] DATETIME2 NULL DEFAULT (sysdatetime())
);
CREATE TABLE [dbo].[system_market_state] (
    [market_state_id] BIGINT IDENTITY(1,1) NOT NULL,
    [event_id] VARCHAR(100) NOT NULL,
    [market_id] VARCHAR(50) NOT NULL,
    [symbol_name] NVARCHAR(100) NOT NULL,
    [event_ts_epoch] BIGINT NOT NULL,
    [event_ts] DATETIME2 NOT NULL,
    [source] VARCHAR(50) NULL,
    [best_bid_price] INT NULL,
    [best_ask_price] INT NULL,
    [spread] INT NULL,
    [bid_depth] INT NULL,
    [ask_depth] INT NULL,
    [orderbook_imbalance] FLOAT NULL,
    [lp_active] BIT NULL DEFAULT ((0)),
    [lp_order_count] INT NULL DEFAULT ((0)),
    [active_agent_count] INT NULL DEFAULT ((0)),
    [created_at] DATETIME2 NULL DEFAULT (sysdatetime())
);
CREATE TABLE [dbo].[system_order] (
    [order_id] BIGINT NOT NULL,
    [event_ts_epoch] BIGINT NOT NULL,
    [agent_id] VARCHAR(50) NOT NULL,
    [order_side] VARCHAR(10) NOT NULL,
    [order_type] VARCHAR(10) NOT NULL,
    [price] INT NULL DEFAULT ((0)),
    [quantity] INT NOT NULL,
    [status] VARCHAR(20) NOT NULL,
    [reject_reason] NVARCHAR(200) NULL,
    [created_at] DATETIME2 NULL DEFAULT (sysdatetime())
);
CREATE TABLE [dbo].[system_trade] (
    [trade_id] BIGINT NOT NULL,
    [event_ts_epoch] BIGINT NOT NULL,
    [buy_order_id] BIGINT NULL,
    [sell_order_id] BIGINT NULL,
    [buyer_id] VARCHAR(50) NOT NULL,
    [seller_id] VARCHAR(50) NOT NULL,
    [price] INT NOT NULL,
    [quantity] INT NOT NULL,
    [trade_amount] BIGINT NULL,
    [is_lp_trade] BIT NULL DEFAULT ((0)),
    [created_at] DATETIME2 NULL DEFAULT (sysdatetime())
);