# STOCK CRAFT

Azure 기반 **실시간 디지털 트윈 주식 거래·분석 샌드박스**

**2026.06 – 2026.07 · Team Project · Team Leader / Data Engineering / AI Reporting**

---

## Overview

사용자 주문과 Rule-based Agent 주문이 동시에 발생하는 가상 주식시장을 구현하고,
실시간 주문·체결 데이터를 수집·처리·분석하여 **사용자의 거래 행동과 시장 영향을 분석하는 Financial Sandbox Platform**입니다.

일반적인 수익률 중심 모의투자와 달리,
여러 Agent가 상호작용하는 환경에서 **사용자의 주문이 시장 가격과 체결 구조에 미치는 영향**까지 관찰할 수 있도록 구성했습니다.

> 본 프로젝트는 교육 및 데이터 분석을 위한 가상 주식시장 시뮬레이션이며 실제 투자 서비스가 아닙니다.

---

## Architecture

<p align="center">
  <img src="./docs/architecture.png" width="900">
</p>

`FastAPI · Redis · Matching Engine`
→ `Azure Event Hubs`
→ `Azure Stream Analytics`
→ `Azure SQL Database`
↔ `Azure Databricks`
→ `Azure Functions · OpenAI`
→ `Dash / Plotly`

---

## Tech Stack

**Cloud / Data**
`Azure Event Hubs` `Azure Stream Analytics` `Azure SQL Database`
`Azure Databricks` `Azure Functions` `Azure OpenAI`

**Backend / Simulation**
`Python` `FastAPI` `Redis` `PostgreSQL`

**Infrastructure**
`Azure VM` `Docker` `Bicep` `ARM Template`

**Visualization**
`Dash` `Plotly`

---

## My Role

**Team Leader · Data Engineering · AI Reporting**

* 프로젝트 전체 데이터 흐름 및 단계별 전달 구조 설계
* Azure SQL Database Schema · Table · Column 구조 설계
* 실시간 주문·체결 데이터 저장 및 처리 구조 구성
* Azure SQL ↔ Databricks 분석 데이터 흐름 설계
* 분석 결과와 Azure Functions API 연동
* Azure OpenAI 기반 사용자 거래 행동 분석 보고서 구현
* 팀원별 데이터 Input / Output 규격 및 연결 지점 조율

---

## Key Features

* 사용자와 Rule-based Agent가 동시에 참여하는 가상 주식시장
* 가격 우선 · 시간 우선 기반 Order Matching
* 시장가 · 지정가 · 부분 체결 지원
* 주문 · 체결 · 계좌 · 시장 상태 이벤트 실시간 Streaming
* Stream Analytics 기반 1초 단위 OHLCV 생성
* Databricks 기반 시장 · Agent · 사용자 거래 행동 분석
* Azure OpenAI 기반 거래 행동 분석 보고서 생성
* Dash · Plotly 기반 실시간 Dashboard

---

## Data Pipeline

실시간 거래 데이터와 분석 데이터를 분리해 관리하도록 구성했습니다.

```text
Trading Events
      ↓
Event Hubs
      ↓
Stream Analytics
      ↓
Azure SQL
      ↓
Databricks
      ↓
Functions / OpenAI
      ↓
Dashboard
```

### 주요 데이터

**Operational Data**
`system_order` `system_trade` `account` `account_event_log` `system_market_state`

**Market Data**
`market_ohlcv` `market_ohlcv_agg` `market_feature`

**Analytics / Report**
`agent_performance` `behavior_analysis_result` `report_output`

---

## Repository Structure

```text
.
├── infra/
│   └── bicep/
│       ├── main.bicep
│       └── arm-template/
│
├── sql/
│   ├── create_table_scripts.sql
│   └── schema-docs/
│
├── functions/
│   └── report-function/
│
├── docs/
│   └── architecture.png
│
├── .gitignore
└── README.md
```

### `infra/`

Bicep 기반 Azure Infrastructure 정의

### `sql/`

Azure SQL Database Schema · Key · Index 정의

### `functions/`

Azure SQL 데이터 조회 및 OpenAI 분석 보고서 생성

### `docs/`

System Architecture 및 프로젝트 문서

---

## Project Info

| 항목       | 내용                                            |
| -------- | --------------------------------------------- |
| Project  | Microsoft Data School 4기 2차 프로젝트              |
| Period   | 2026.06 – 2026.07                             |
| Type     | Team Project                                  |
| Role     | Team Leader · Data Engineering · AI Reporting |
| Platform | Azure 기반 실시간 주식 거래·분석 Sandbox                 |
