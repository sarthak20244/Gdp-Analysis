CREATE DATABASE  IF NOT EXISTS `forecast_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `forecast_db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: forecast_db
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `fiscal_deficit_surplus`
--

DROP TABLE IF EXISTS `fiscal_deficit_surplus`;
/*!50001 DROP VIEW IF EXISTS `fiscal_deficit_surplus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fiscal_deficit_surplus` AS SELECT 
 1 AS `Year`,
 1 AS `Fiscal_Deficit`,
 1 AS `Revenue_Deficit`,
 1 AS `Primary_Deficit`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `electricity_mix_percent`
--

DROP TABLE IF EXISTS `electricity_mix_percent`;
/*!50001 DROP VIEW IF EXISTS `electricity_mix_percent`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `electricity_mix_percent` AS SELECT 
 1 AS `Year`,
 1 AS `Hydel_pct`,
 1 AS `Thermal_pct`,
 1 AS `Nuclear_pct`,
 1 AS `RES_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `trade_balance_yoy`
--

DROP TABLE IF EXISTS `trade_balance_yoy`;
/*!50001 DROP VIEW IF EXISTS `trade_balance_yoy`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `trade_balance_yoy` AS SELECT 
 1 AS `Year`,
 1 AS `Total_Export`,
 1 AS `Total_Import`,
 1 AS `Trade_Balance`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `forex_reserves_summary`
--

DROP TABLE IF EXISTS `forex_reserves_summary`;
/*!50001 DROP VIEW IF EXISTS `forex_reserves_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `forex_reserves_summary` AS SELECT 
 1 AS `Year`,
 1 AS `Total_Forex_Reserves`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `primary_energy_summary`
--

DROP TABLE IF EXISTS `primary_energy_summary`;
/*!50001 DROP VIEW IF EXISTS `primary_energy_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `primary_energy_summary` AS SELECT 
 1 AS `Year`,
 1 AS `Total_Primary_Energy`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `trade_gdp_ratio`
--

DROP TABLE IF EXISTS `trade_gdp_ratio`;
/*!50001 DROP VIEW IF EXISTS `trade_gdp_ratio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `trade_gdp_ratio` AS SELECT 
 1 AS `Year`,
 1 AS `Trade_Balance_as_pct_GDP`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `inflation_tracker`
--

DROP TABLE IF EXISTS `inflation_tracker`;
/*!50001 DROP VIEW IF EXISTS `inflation_tracker`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `inflation_tracker` AS SELECT 
 1 AS `Year`,
 1 AS `CPI_Industrial`,
 1 AS `CPI_Agriculture`,
 1 AS `CPI_Rural`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `forex_composition`
--

DROP TABLE IF EXISTS `forex_composition`;
/*!50001 DROP VIEW IF EXISTS `forex_composition`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `forex_composition` AS SELECT 
 1 AS `Year`,
 1 AS `Gold`,
 1 AS `SDR`,
 1 AS `FCA`,
 1 AS `RTP`,
 1 AS `Total_Reserves`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `fiscal_deficit_surplus`
--

/*!50001 DROP VIEW IF EXISTS `fiscal_deficit_surplus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fiscal_deficit_surplus` AS select `full_macro_data`.`Year` AS `Year`,round(sum((case when (`full_macro_data`.`Indicator` like '%Fiscal Deficit%') then `full_macro_data`.`Value` else 0 end)),2) AS `Fiscal_Deficit`,round(sum((case when (`full_macro_data`.`Indicator` like '%Revenue Deficit%') then `full_macro_data`.`Value` else 0 end)),2) AS `Revenue_Deficit`,round(sum((case when (`full_macro_data`.`Indicator` like '%Primary Deficit%') then `full_macro_data`.`Value` else 0 end)),2) AS `Primary_Deficit` from `full_macro_data` where (`full_macro_data`.`Category` like '%Fiscal%') group by `full_macro_data`.`Year` order by `full_macro_data`.`Year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `electricity_mix_percent`
--

/*!50001 DROP VIEW IF EXISTS `electricity_mix_percent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `electricity_mix_percent` AS select `full_macro_data`.`Year` AS `Year`,round(((100.0 * sum((case when (`full_macro_data`.`Indicator` = 'Hydel') then `full_macro_data`.`Value` else 0 end))) / nullif(sum(`full_macro_data`.`Value`),0)),2) AS `Hydel_pct`,round(((100.0 * sum((case when (`full_macro_data`.`Indicator` = 'Thermal') then `full_macro_data`.`Value` else 0 end))) / nullif(sum(`full_macro_data`.`Value`),0)),2) AS `Thermal_pct`,round(((100.0 * sum((case when (`full_macro_data`.`Indicator` = 'Nuclear') then `full_macro_data`.`Value` else 0 end))) / nullif(sum(`full_macro_data`.`Value`),0)),2) AS `Nuclear_pct`,round(((100.0 * sum((case when (`full_macro_data`.`Indicator` = 'R.E.S.') then `full_macro_data`.`Value` else 0 end))) / nullif(sum(`full_macro_data`.`Value`),0)),2) AS `RES_pct` from `full_macro_data` where (`full_macro_data`.`Category` like 'Electricity Generated (GWh)%') group by `full_macro_data`.`Year` order by `full_macro_data`.`Year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `trade_balance_yoy`
--

/*!50001 DROP VIEW IF EXISTS `trade_balance_yoy`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trade_balance_yoy` AS select `full_macro_data`.`Year` AS `Year`,round(sum((case when (`full_macro_data`.`Indicator` like 'Export%') then `full_macro_data`.`Value` else 0 end)),2) AS `Total_Export`,round(sum((case when (`full_macro_data`.`Indicator` like 'Import%') then `full_macro_data`.`Value` else 0 end)),2) AS `Total_Import`,round((sum((case when (`full_macro_data`.`Indicator` like 'Export%') then `full_macro_data`.`Value` else 0 end)) - sum((case when (`full_macro_data`.`Indicator` like 'Import%') then `full_macro_data`.`Value` else 0 end))),2) AS `Trade_Balance` from `full_macro_data` where (`full_macro_data`.`Category` = 'Foreign Trade') group by `full_macro_data`.`Year` order by `full_macro_data`.`Year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `forex_reserves_summary`
--

/*!50001 DROP VIEW IF EXISTS `forex_reserves_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `forex_reserves_summary` AS select `full_macro_data`.`Year` AS `Year`,sum((case when ((`full_macro_data`.`Indicator` like '%Gold%') or (`full_macro_data`.`Indicator` like '%Foreign Currency%') or (`full_macro_data`.`Indicator` like '%SDR%') or (`full_macro_data`.`Indicator` like '%Reserve Tranch%')) then `full_macro_data`.`Value` else 0 end)) AS `Total_Forex_Reserves` from `full_macro_data` where (`full_macro_data`.`Category` = 'Foreign Exchange Reserves') group by `full_macro_data`.`Year` order by `full_macro_data`.`Year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `primary_energy_summary`
--

/*!50001 DROP VIEW IF EXISTS `primary_energy_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `primary_energy_summary` AS select `full_macro_data`.`Year` AS `Year`,sum((case when ((`full_macro_data`.`Indicator` like '%Coal%') or (`full_macro_data`.`Indicator` like '%Crude Oil%') or (`full_macro_data`.`Indicator` like '%Natural Gas%') or (`full_macro_data`.`Indicator` like '%Petroleum%')) then `full_macro_data`.`Value` else 0 end)) AS `Total_Primary_Energy` from `full_macro_data` where (`full_macro_data`.`Category` like 'Energy Generation%') group by `full_macro_data`.`Year` order by `full_macro_data`.`Year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `trade_gdp_ratio`
--

/*!50001 DROP VIEW IF EXISTS `trade_gdp_ratio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trade_gdp_ratio` AS select `a`.`Year` AS `Year`,round((((`b`.`Value` - `c`.`Value`) / nullif(`a`.`Value`,0)) * 100),2) AS `Trade_Balance_as_pct_GDP` from ((`full_macro_data` `a` join `full_macro_data` `b` on(((`a`.`Year` = `b`.`Year`) and (`b`.`Indicator` like 'Export%') and (`b`.`Category` = 'Foreign Trade')))) join `full_macro_data` `c` on(((`a`.`Year` = `c`.`Year`) and (`c`.`Indicator` like 'Import%') and (`c`.`Category` = 'Foreign Trade')))) where ((`a`.`Category` = 'Gross Domestic Product') and (`a`.`Indicator` like 'At current prices%')) group by `a`.`Year`,`a`.`Value`,`b`.`Value`,`c`.`Value` order by `a`.`Year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inflation_tracker`
--

/*!50001 DROP VIEW IF EXISTS `inflation_tracker`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inflation_tracker` AS select `full_macro_data`.`Year` AS `Year`,round(max((case when (`full_macro_data`.`Indicator` = 'Industrial Workers (2001=100)') then `full_macro_data`.`Value` else NULL end)),2) AS `CPI_Industrial`,round(max((case when (`full_macro_data`.`Indicator` = 'Agricultural Labourers (1986-87=100)') then `full_macro_data`.`Value` else NULL end)),2) AS `CPI_Agriculture`,round(max((case when (`full_macro_data`.`Indicator` = 'Rural Labourers (1986-87=100)') then `full_macro_data`.`Value` else NULL end)),2) AS `CPI_Rural` from `full_macro_data` where (`full_macro_data`.`Category` = 'Consumer Price Index') group by `full_macro_data`.`Year` order by `full_macro_data`.`Year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `forex_composition`
--

/*!50001 DROP VIEW IF EXISTS `forex_composition`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `forex_composition` AS select `full_macro_data`.`Year` AS `Year`,round(sum((case when (`full_macro_data`.`Indicator` like 'Gold%') then `full_macro_data`.`Value` else 0 end)),2) AS `Gold`,round(sum((case when (`full_macro_data`.`Indicator` like 'SDR%') then `full_macro_data`.`Value` else 0 end)),2) AS `SDR`,round(sum((case when (`full_macro_data`.`Indicator` like 'Foreign Currency Assets%') then `full_macro_data`.`Value` else 0 end)),2) AS `FCA`,round(sum((case when (`full_macro_data`.`Indicator` like 'Reserve Tranch Position%') then `full_macro_data`.`Value` else 0 end)),2) AS `RTP`,round(sum(`full_macro_data`.`Value`),2) AS `Total_Reserves` from `full_macro_data` where (`full_macro_data`.`Category` = 'Foreign Exchange Reserves') group by `full_macro_data`.`Year` order by `full_macro_data`.`Year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-25 12:29:06
