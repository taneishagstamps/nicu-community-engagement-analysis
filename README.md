## NICU Community Engagement Analysis

## Project Background

Hand to Hold is a national nonprofit organization dedicated to providing emotional support to families before, during, and after a NICU stay — including bereaved parents. The organization connects families with peer mentors, support groups, educational resources, and mental health support to help reduce isolation and improve emotional outcomes during one of the most challenging times in a parent’s life.

In September 2022, Hand to Hold launched a community app to expand access to support beyond in-person and hospital-based programs. Through the app, NICU and bereaved parents can connect with peers, join virtual groups, ask questions, and explore curated resources in a safe, supportive space. Since launch, the app has onboarded over 3,500 users. However, maintaining long-term engagement has been a challenge. I'm partnering with the Program Director and Community Manager to analyze user engagement and retention within their community app to help uncover patterns in user behavior, identify opportunities to improve retention, and help more families stay connected to the emotional support they need.

## Executive Summary

This analysis of 3,500 user records from 2022-2025 reveals consistently high churn rates within the Hand to Hold community app, with an average churn of 90% and a notable improvement to 67% in February 2025. Most users disengage within the first 30 days, though recent retention gains suggest that onboarding or programmatic changes may be positively impacting user behavior.

Engagement is concentrated among users affiliated with partner hospitals and those who identify as NICU moms, with posts and comments driving most of the in-app activity. However, the majority of users never interact beyond registration, signaling a need for stronger early touchpoints and support pathways.

This project supports program strategy by identifying which user segments stay engaged, when churn typically occurs, and how outreach can be tailored based on user type, NICU year, and geographic trends. By refining onboarding, automating re-engagement efforts, and personalizing support through cohort-based outreach, Hand to Hold can deepen user connection and deliver more consistent, long-term emotional support to NICU and bereaved families.

## Insights Deep Dive



## Recommendations 





## Clarifying Questions, Assumptions, and Caveats

### Clarifying Questions
- What qualifies a user as "active"? For this analysis, users are considered active if their `last_seen` date falls within the past 30 days.
- Are `number_of_posts`, `number_of_comments`, and `number_of_likes` cumulative totals or timestamped logs? For this version, we assume these are cumulative.
- Does `partner_hospital` refer to the hospital where the user gave birth or where they received outreach?
- Is `user_type` self-selected during onboarding, or derived from usage?

### Assumptions
- `date_registered` reflects the moment a user first created their account.
- `last_seen` is assumed to be the last date of any in-app activity.
- Users with `has_engaged = 1` have posted, commented, or liked at least once.
- Users who select “None” or “Ninguno” in the `partner_hospital` field are categorized as non-partner users.
- All date comparisons use the `CURRENT_DATE` function to simulate “today” during analysis.

### Caveats
- The dataset does not currently include timestamped event logs, so retention calculations are based on first and last activity only.
- Churn calculations may be inflated due to one-time sign-ups who never intended to return (e.g., “one-and-done” behavior).
- Some profile fields (e.g., `state`, `user_type`) may be left blank or contain inconsistent formatting, which could skew demographic breakdowns.
- Email verification is treated as a proxy for serious intent to engage, though it may not perfectly correlate with future usage.
