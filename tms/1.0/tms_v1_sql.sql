﻿CREATE TABLE IF NOT EXISTS `tms_bd_RegionSet` (      
	`rs_RegionCode` varchar(10)  NOT NULL ,           
	`rs_RegionName` varchar(20)  NULL ,                
        `rs_RegionFullName` varchar(50)  NULL ,             
	`rs_HelpCode` varchar(10)  NULL ,                 
	`rs_IdCode` varchar(10)  NULL ,  
	`rs_AdderID` varchar(20)  NULL , 
	`rs_Adder` varchar(30)  NULL ,
	`rs_AddTime` datetime  NULL , 
	`rs_ModerID` varchar(20)  NULL , 
	`rs_Moder` varchar(30)  NULL ,
	`rs_ModTime` datetime  NULL ,                
	`rs_Remark` varchar(50)  NULL ,                    
	PRIMARY KEY (`rs_RegionCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_SiteSet` (
	`sset_SiteID` varchar(20)  NOT NULL ,
	`sset_SiteName` varchar(50) NOT NULL UNIQUE,
	`sset_SiteType` varchar(10) NOT NULL ,
	`sset_SiteRank`  varchar(10) NULL ,
	`sset_OperateCode` varchar(20)  NOT NULL ,
	`sset_HelpCode` varchar(10)  NULL ,
	`sset_IdCode` varchar(10)  NULL ,
	`sset_Region` varchar(50)  NULL ,
	`sset_IsStation` tinyint NULL ,
	`sset_IsTollSite` tinyint NULL, 
	`sset_StationAdOrg` varchar(50)  NULL,
	`sset_AdderID` varchar(20)  NULL , 
	`sset_Adder` varchar(30)  NULL ,
	`sset_AddTime` datetime  NULL , 
	`sset_ModerID` varchar(20)  NULL , 
	`sset_Moder` varchar(30)  NULL ,
	`sset_ModTime` datetime  NULL ,  
	`sset_Remark` varchar(50)  NULL ,
	PRIMARY KEY (`sset_SiteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_LineInfo` (	
	`li_LineID` varchar(30)  NOT NULL ,    	
     	`li_RunLineID` varchar(20) NULL ,      
	`li_LineName` varchar(50) NOT NULL ,      	
    	`li_LineKind` varchar(8)  NULL ,      
    	`li_LineDegree` varchar(8)  NULL ,    
    	`li_LineType` varchar(8)  NULL ,      
    	`li_Direction` varchar(8) NULL ,			
    	`li_Kilometer` decimal(12,2)  NULL ,        
    	`li_Hours` decimal(12,2)  NULL ,         	
	`li_BeginLocation` varchar(50) NOT  NULL ,   
	`li_BeginSite` varchar(50) NOT NULL ,     	
	`li_BeginSiteID` varchar(20) NOT NULL ,   	
	`li_EndLocation` varchar(50)  NULL ,       
	`li_EndSite` varchar(50) NOT NULL ,       	
	`li_EndSiteID` varchar(20)  NOT NULL ,     	
	`li_Linestate` varchar(8) NULL ,        
	`li_StationID` varchar(20)  NULL ,      
	`li_Station` varchar(50)  NULL ,        
	`li_InRegion` varchar(50)  NULL ,
	`li_AdderID` varchar(20)  NULL ,
	`li_Adder` varchar(30)  NULL ,
	`li_AddTime` datetime  NULL , 
    	`li_ModerID` varchar(20)  NULL ,
	`li_Moder` varchar(30)  NULL ,
	`li_ModTime` datetime  NULL ,
     	`li_Remark` varchar(50)  NULL ,       
	PRIMARY KEY (`li_LineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_SectionInfo` (  
	`si_LineID` varchar(30)  NOT NULL ,             
	`si_LineName` varchar(50) NULL ,                
	`si_SectionID` tinyint(4) NOT NULL ,           
	`si_SiteNameID` varchar(20) NOT NULL ,        
	`si_SiteName` varchar(50) NULL ,               
	`si_Kilometer` decimal(12,2) NULL ,            
	`si_IsDock` tinyint NULL ,                    
	`si_IsGetOnSite` tinyint NULL ,                
	`si_IsCheckInSite` tinyint NULL ,               
    	`si_IsTollInSite` tinyint NULL ,                 
	`si_IsServiceFee` tinyint NULL ,                 
	`si_ServiceFee` decimal(12,2) NULL ,             
	`si_otherFee1` decimal(12,2) NULL ,              
	`si_otherFee2` decimal(12,2) NULL ,
	`si_otherFee3` decimal(12,2) NULL ,
	`si_otherFee4` decimal(12,2) NULL ,
	`si_otherFee5` decimal(12,2) NULL ,
	`si_otherFee6` decimal(12,2) NULL ,
	`si_Remark` varchar(50) NULL ,                
    	PRIMARY KEY (`si_LineID`, `si_SectionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_NoRunsInfo` ( 	
	`nri_NoOfRunsID` varchar(20)  NOT NULL , 			
	`nri_LineID` varchar(30)  NOT NULL ,     			
	`nri_LineName` varchar(50)  NOT NULL ,  			
	`nri_BeginSiteID` varchar(20)  NULL ,    			
	`nri_BeginSite` varchar(50)  NULL ,      			
	`nri_EndSiteID` varchar(20)  NULL ,      			
	`nri_EndSite` varchar(50)  NULL ,
	`nri_DepartureTime` char(5)  NULL ,
	`nri_OperateCode` varchar(50)  NULL ,
	`nri_Type` varchar(10)  NULL ,
	`nri_State` varchar(20)  NULL ,
	`nri_DealCategory` varchar(20) NULL ,    			    
    	`nri_DealStyle` varchar(20) NULL ,                   
    	`nri_RunHours` varchar(8) NULL ,                      
   	`nri_SeverFeeRate` decimal(12,2)  NULL ,           
    	`nri_TempAddFee` decimal(12,1)  NULL ,           
    	`nri_BalanceModel` varchar(50) NULL ,            
	`nri_CheckTicketWindow` varchar(2) NULL ,       			
	`nri_SellWindow` varchar(2) NULL ,         			
	`nri_RunRegion` varchar(50)  NULL ,     			
	`nri_LoopDate` char(10)  NULL ,          		
	`nri_StartDay` int NULL ,                 	
	`nri_RunDay` int NULL ,                           
	`nri_StopDay` int NULL ,                           
	`nri_IsStopOrCreat` tinyint NULL ,                      
	`nri_Allticket` tinyint NULL ,                       
	`nri_StationDeal` tinyint NULL ,
	`nri_WeekLoop` varchar(30) NULL,
	`nri_MonthLoop` varchar(100) NULL,             
     	`nri_IsNightAddition` tinyint NULL ,            
     	`nri_IsSucceedLine` tinyint NULL ,            
     	`nri_IsThroughAddition` tinyint NULL ,          
     	`nri_IsExclusive` tinyint NULL ,                 
     	`nri_IsReturn` tinyint NULL ,                    
	`nri_AllowSell` tinyint NULL ,                     
	`nri_AddNoRuns` tinyint NULL ,                    
	`nri_PrintTime` varchar(50)  NULL ,                   
	`nri_PrintSeat` varchar(50)  NULL ,
	`nri_AdderID` varchar(20)  NULL ,
	`nri_Adder` varchar(30)  NULL ,
	`nri_AddTime` datetime  NULL , 
    	`nri_ModerID` varchar(20)  NULL ,
	`nri_Moder` varchar(30)  NULL ,
	`nri_ModTime` datetime  NULL ,                    
    	`nri_Remark` varchar(50)  NULL ,                    
	PRIMARY KEY (`nri_NoOfRunsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_NoRunsDockSite` (   
	`nds_NoOfRunsID` varchar(20)  NOT NULL ,           
	`nds_ID` tinyint NOT NULL ,                         
	`nds_SiteName` varchar(50)  NULL ,                  
	`nds_SiteID` varchar(20)  NULL ,                    
	`nds_IsDock` tinyint NULL ,                        
	`nds_GetOnSite` tinyint NULL ,                      
	`nds_CheckInSite` tinyint NULL ,                     
	`nds_DepartureTime` char(5)  NULL ,
	`nds_RunHours` varchar(8)  NULL ,                 
--	`nds_CheckTicketWindow` tinyint NULL ,            
	`nds_CheckTicketWindow` varchar(2) NULL ,            
	`nds_IsServiceFee` tinyint NOT NULL ,             
	`nds_ServiceFee` decimal(12,2) NULL ,              
	`nds_otherFee1` decimal(12,2) NULL ,
	`nds_otherFee2` decimal(12,2) NULL ,
	`nds_otherFee3` decimal(12,2) NULL ,
	`nds_otherFee4` decimal(12,2) NULL ,
	`nds_otherFee5` decimal(12,2) NULL ,
	`nds_otherFee6` decimal(12,2) NULL ,
	`nds_Remark` varchar(200)  NULL ,         
	`nds_StintSell` int NULL ,                     
	`nds_StintTime` char(5)  NULL ,               
	PRIMARY KEY (`nds_NoOfRunsID`, `nds_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_NoRunsLoop` (  
	`nrl_NoOfRunsID` varchar(20)  NOT NULL ,        
	`nrl_LoopID` tinyint NOT NULL ,                  
	`nrl_ModelID` varchar(20)  NULL ,                
	`nrl_ModelName` varchar(50)  NULL ,             
	`nrl_BusID` varchar(20)  NULL ,                 
	`nrl_BusCard` varchar(20)  NULL ,              
	`nrl_Seating` int NULL ,                        
	`nrl_AddSeating` tinyint NULL , 
	`nrl_AllowHalfSeats` tinyint NULL ,                  
	`nrl_Loads` int NULL , 
	`nrl_Unit` varchar(100) NULL ,                         
	`nrl_StationID` varchar(20)  NULL ,             
	`nrl_Station` varchar(50)  NULL ,               
	`nrl_Remark` varchar(200)  NULL ,             
	PRIMARY KEY (`nrl_LoopID`,`nrl_NoOfRunsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_GroupLoopBus` (  
	`glb_LoopID` int NOT NULL ,                 
	`glb_ModelID` varchar(50) NULL ,             
	`glb_ModelName` varchar(50) NULL ,        
	`glb_BusID` varchar(50)  NULL ,             
	`glb_BusCard` varchar(50) NULL ,             
	`glb_Seating` int NULL ,                    
	`glb_AddSeating` int NULL ,                 
	`glb_Loads` int NULL ,                     
	`glb_StationID` varchar(50)  NULL ,         
	`glb_Station` varchar(50)  NULL ,           
	`glb_Remark` varchar(50)  NULL ,          
	`glb_UserID` varchar(50)  NOT NULL ,      
	PRIMARY KEY (`glb_LoopID`, `glb_BusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_GroupLoopNoRuns` ( 
	`gln_LoopID` int NOT NULL ,            
	`gln_NoOfRunsID` varchar(50)  NULL,     
	`gln_LineName` varchar(50)  NULL ,       
	`gln_DepartureTime` char(5)  NULL ,      
	`gln_UserID` varchar(50)  NOT NULL ,    
	PRIMARY KEY (`gln_LoopID`, `gln_NoOfRunsID`)     
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_ScheduleReserve` (   
	`sr_NoOfRunsID` varchar(10)  NOT NULL ,         
	`sr_SellerID` varchar(10)  NULL ,
	`sr_Seller` varchar(30)  NULL ,             
	`sr_ModelID` varchar(10)  NULL ,
	`sr_ModelName` varchar(30)  NULL ,               
	`sr_ReserveSeatNO` varchar(255) NULL ,         
	`sr_ReserveSeatS` tinyint NULL ,                
	`sr_Remark` varchar(50) NULL ,                  
	PRIMARY KEY (`sr_NoOfRunsID`,`sr_ModelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_Reserve` ( 
	`re_NoOfRunsID` varchar(20) NOT NULL ,     
	`re_LineID` varchar(30)  NULL ,              
	`re_NoOfRunsdate` char(10)  NOT NULL ,      
	`re_ReserveSeatNO` varchar(50)  NOT NULL ,   
	`re_ReserveSeatS` tinyint NULL ,               
	`re_OnStationID` varchar(20)  NULL ,          
	`re_OnStation` varchar(50)  NULL ,            
    	`re_ReserveUserID` varchar(20)  NULL ,        
	`re_ReserveUser` varchar(20)  NULL ,          
	`re_DateTime` datetime NULL ,           
	`re_Remark` varchar(200)  NULL ,             
	PRIMARY KEY (`re_NoOfRunsID`, `re_OnStationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_ScheduleLong` (  
	`sl_ID` int auto_increment NOT NULL ,            
	`sl_NoOfRunsID` varchar(20)  NOT NULL ,        
	`sl_BeginDate` char(10)  NOT NULL ,            
	`sl_EndDate` char(10)  NOT NULL ,               
	`sl_StopCause` varchar(30)  NULL ,               
	`sl_Remark` varchar(50)  NULL ,                
	PRIMARY KEY (`sl_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_NoRunsAdjustPrice` ( 
	`nrap_ID` int auto_increment NOT NULL ,               
	`nrap_ISLineAdjust` tinyint NULL ,                       
	`nrap_LineAdjust` varchar(50)  NOT NULL ,            
	`nrap_ISNoRunsAdjust` tinyint NULL ,                    
	`nrap_NoRunsAdjust` varchar(30)  NULL ,
	`nrap_ISUnitAdjust` tinyint NULL ,
	`nrap_Unit` varchar(50) NULL ,           
	`nrap_DepartureSiteID` varchar(20)  NULL ,           
	`nrap_DepartureSite` varchar(50)  NULL ,             
	`nrap_GetToSiteID` varchar(20)  NULL ,              
	`nrap_GetToSite` varchar(50)  NULL ,                
	`nrap_ModelID` varchar(20)  NULL ,                 
	`nrap_ModelName` varchar(50)  NULL ,              
	`nrap_BeginDate` char(10)  NULL ,                  
	`nrap_EndDate` char(10)  NULL ,                   
	`nrap_BeginTime` char(5)  NULL ,                  
	`nrap_EndTime` char(5)  NULL ,                   
	`nrap_ReferPrice` decimal(12,1) NULL ,             
	`nrap_PriceUpPercent` decimal(12,2) NULL ,          
	`nrap_RunPrice` decimal(12,1) NULL ,              
	`nrap_HalfPrice` decimal(12,1) NULL , 
	`nrap_BalancePrice` decimal(12,1) NULL ,             
	`nrap_LinkAdjustPrice` tinyint NULL ,  
	`nrap_Remark` varchar(200)  NULL ,               
	PRIMARY KEY (`nrap_ID`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_NoRunsAdjustPriceTemp` (
	`nrt_ID` int auto_increment NOT NULL ,                    
	`nrt_DepartureSiteID` varchar(50)  NULL ,                 
	`nrt_DepartureSite` varchar(50)  NULL ,                   
	`nrt_GetToSiteID` varchar(50)  NULL ,                     
	`nrt_GetToSite` varchar(50)  NULL ,                       
	`nrt_ModelID` varchar(50)  NULL ,                        
	`nrt_ModelName` varchar(50)  NULL ,                    
	`nrt_RunPrice` decimal(12,1) NULL ,                       
	`nrt_HalfPrice` decimal(12,1) NULL ,                       
	`nrt_UserID` varchar(50)  NULL ,                        
	PRIMARY KEY (`nrt_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_ServiceFeeSet` (  
	`sf_ID` int auto_increment NOT NULL ,              
	`sf_StationID` varchar(20) NULL ,                  
	`sf_Station` varchar(50)  NULL ,                    
	`sf_BeginKilometer` decimal(12,2) NULL ,                
	`sf_EndKilometer` decimal(12,2) NULL ,                
	`sf_ServiceFee` decimal(12,2) NULL ,               
	PRIMARY KEY (`sf_ID`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_ServiceFeeAdjust` ( 
	`sfa_ID` int auto_increment NOT NULL ,         
	`sfa_ISLineAdjust` tinyint NULL ,               
	`sfa_LineAdjust` varchar(50)  NULL ,          
	`sfa_ISNoRunsAdjust` tinyint NULL ,               
	`sfa_NoRunsAdjust` varchar(20)  NULL ,
	`sfa_ISUnitAdjust` tinyint NULL ,
	`sfa_Unit` varchar(50) NULL ,           
	`sfa_DepartureSiteID` varchar(20)  NULL ,        
	`sfa_DepartureSite` varchar(20)  NULL ,          
	`sfa_GetToSiteID` varchar(20)  NULL ,           
	`sfa_GetToSite` varchar(20)  NULL ,             
	`sfa_ModelID` varchar(20) NULL ,               
	`sfa_ModelName` varchar(20)  NULL ,           
	`sfa_BeginDate` char(10)  NULL ,               
	`sfa_EndDate` char(10)  NULL ,                
	`sfa_BeginTime` char(5)  NULL ,               
	`sfa_EndTime` char(5)  NULL ,                
	`sfa_RunPrice` decimal(12,1) NULL ,            
	`sfa_LinkAdjustPrice` tinyint NULL ,                
	`sfa_Remark` varchar(100)  NULL ,             
	PRIMARY KEY (`sfa_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_AgioType` ( 
	`at_AgioName` varchar(50)  NOT NULL,        
	`at_Agio` decimal(12,2) NULL,                       
	`at_Remark` varchar(100)  NULL,             
	PRIMARY KEY (`at_AgioName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_TicketMode` (  
	`tml_NoOfRunsID` varchar(50)  NOT NULL ,     
	`tml_LineID` varchar(50)  NULL ,               
	`tml_NoOfRunsdate` char(10)  NOT NULL ,       
	`tml_NoOfRunstime` char(5)  NULL ,            
	`tml_BeginstationID` varchar(50)  NULL ,       
	`tml_Beginstation` varchar(50)  NULL ,         
	`tml_EndstationID` varchar(50)  NULL ,         
	`tml_Endstation` varchar(50)  NULL ,
	`tml_RunHours` varchar(8) NULL ,              
	`tml_CheckTicketWindow` int NULL ,             
	`tml_SellWindow` int NULL ,                    
	`tml_Loads` int NULL ,                         
	`tml_SeatStatus` varchar(8000)  NULL ,           
	`tml_TotalSeats` int NULL ,                     
	`tml_LeaveSeats` int NULL ,                    
	`tml_HalfSeats` int NULL ,
	`tml_LeaveHalfSeats` int NULL ,                      
	`tml_ReserveSeats` int NULL ,                  
	`tml_StopRun` tinyint NULL ,                     
	`tml_Allticket` tinyint NULL ,  
	`tml_AllowSell` tinyint NULL ,                   
	`tml_Orderno` int NULL ,                     
	`tml_StationID` varchar(50)  NULL ,           
	`tml_Station` varchar(50)  NULL ,             
	`tml_Created` datetime NULL ,                
	`tml_Createdby` varchar(50)  NULL ,          
	`tml_Updated` datetime NULL ,                
	`tml_Updatedby` varchar(50)  NULL ,          
	`tml_BusModelID` varchar(20)  NULL ,            
	`tml_BusModel` varchar(50)  NULL ,              
	`tml_BusID` varchar(20) not NULL ,                 
	`tml_BusCard` varchar(20)  NULL , 
	`tml_BusUnit` varchar(100)  NULL ,               
	`tml_FreeSeats` int NULL ,                       
	`tml_LeaveFreeSeats` int NULL ,                  
	`tml_StationDeal` tinyint NULL ,                     
	`tml_RunRegion` varchar(50)  NULL ,               
	`tml_DealCategory` varchar(20)  NULL ,             
	`tml_DealStyle` varchar(20)  NULL ,                
	PRIMARY KEY (`tml_NoOfRunsID`, `tml_NoOfRunsdate`, `tml_BusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_PriceDetail` (  
	`pd_NoOfRunsID` varchar(20) NOT NULL ,        
	`pd_LineID` varchar(30)  NULL ,                
	`pd_NoOfRunsdate` char(10)  NOT NULL ,        
	`pd_BeginStationTime` char(5)  NULL ,           
	`pd_StopStationTime` char(5)  NULL ,
	`pd_RunHours` varchar(8) NULL ,             
	`pd_Distance` decimal(12,2) NULL ,              
	`pd_BeginStationID` varchar(20)  NULL ,         
	`pd_BeginStation` varchar(50)  NULL ,           
	`pd_FromStationID` varchar(20) NOT NULL ,      
	`pd_FromStation` varchar(50)  NULL ,           
	`pd_ReachStationID` varchar(20)  NOT NULL ,    
	`pd_ReachStation` varchar(50)  NULL ,          
	`pd_EndStationID` varchar(20)  NULL ,           
	`pd_EndStation` varchar(50)  NULL ,             
	`pd_FullPrice` decimal(12,1) NULL ,              
	`pd_HalfPrice` decimal(12,1) NULL ,              
	`pd_StandardPrice` decimal(12,1) NULL ,
	`pd_BalancePrice` decimal(12,1) NULL ,        
	`pd_ServiceFee` decimal(12,2) NULL ,            
	`pd_otherFee1` decimal(12,2) NULL ,            
	`pd_otherFee2` decimal(12,2) NULL ,
	`pd_otherFee3` decimal(12,2) NULL ,
	`pd_otherFee4` decimal(12,2) NULL ,
	`pd_otherFee5` decimal(12,2) NULL ,
	`pd_otherFee6` decimal(12,2) NULL ,
	`pd_StationID` varchar(20)  NULL ,            
	`pd_Station` varchar(50)  NULL ,              
	`pd_Created` datetime NULL ,                 
	`pd_CreatedBY` varchar(30)  NULL ,          
	`pd_Updated` datetime NULL ,                
	`pd_UpdatedBY` varchar(30)  NULL ,         
	`pd_IsPass` tinyint NULL ,                      
	`pd_CheckInSite` tinyint NULL ,                 
	`pd_IsFromSite` tinyint NULL ,                 
	`pd_StintSell` tinyint NULL ,                   
	`pd_StintTime` char(5) NULL,               
	PRIMARY KEY (`pd_NoOfRunsID`, `pd_NoOfRunsdate`, `pd_FromStationID`, `pd_ReachStationID`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_NoRunsDockSiteTemp` (   
	`ndst_NoOfRunsID` varchar(20)  NOT NULL ,
	`ndst_NoOfRunsdate` char(10)  NOT NULL ,           
	`ndst_ID` tinyint NOT NULL ,                         
	`ndst_SiteName` varchar(50)  NULL ,                  
	`ndst_SiteID` varchar(20)  NULL ,                    
	`ndst_IsDock` tinyint NULL ,                        
	`ndst_GetOnSite` tinyint NULL , 
	`ndst_CheckInSite` tinyint NULL ,                                       
	`ndst_DepartureTime` char(5)  NULL ,
	`ndst_RunHours` varchar(8)  NULL ,                                
	`ndst_StintSell` int NULL ,                     
	`ndst_StintTime` char(5)  NULL ,               
	PRIMARY KEY (`ndst_NoOfRunsID`, `ndst_NoOfRunsdate`, `ndst_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_AddPrice` (  
	`ap_NoOfRunsID` varchar(20)  NOT NULL ,		
	`ap_FromStationID` varchar(20)  NOT NULL ,      
	`ap_FromStation` varchar(50)  NULL ,            
	`ap_ReachStationID` varchar (20)  NOT NULL ,    
	`ap_ReachStation` varchar (50)  NULL ,          
	`ap_Distance` decimal(12,2) NULL ,              
	`ap_FullPrice` decimal(12,1) NULL ,             
	`ap_HalfPrice` decimal(12,1) NULL ,             
	`ap_StandardPrice` decimal(12,1) NULL ,         
	`ap_UserID` varchar(20)  NULL              
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_BusModel` ( 
	`bm_ModelID` varchar(20)  NOT NULL ,   
	`bm_ModelName` varchar(50)  NULL ,     
	`bm_Rank` varchar(20)  NULL ,          
	`bm_Category` varchar(10)  NULL ,      
	`bm_Seating` int NULL ,               
	`bm_AddSeating` int NULL ,
	`bm_AllowHalfSeats` int NULL ,             
	`bm_Weight` int NULL ,  
	`bm_AdderID` varchar(20)  NULL , 
	`bm_Adder` varchar(30)  NULL ,
	`bm_AddTime` datetime  NULL , 
	`bm_ModerID` varchar(20)  NULL , 
	`bm_Moder` varchar(30)  NULL ,
	`bm_ModTime` datetime  NULL ,                
	`bm_Closing` decimal(12,2)  NULL ,     
	`bm_Remark` varchar(200)  NULL ,       
	PRIMARY KEY (`bm_ModelID`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_TicketPriceFactor` ( 
	`tpf_ModelID` varchar(20)  NOT NULL ,             
	`tpf_ModelName` varchar(20)  NULL ,                 
	`tpf_PriceProject` varchar(20) NOT NULL ,             
	`tpf_BeginDate` char(10)  NULL ,                    
	`tpf_EndDate` char(10)  NULL ,                      
	`tpf_MoneyRenKil` decimal(12,1) NULL ,              
	`tpf_Remark` varchar(200)  NULL               
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_BusInfo` (     
	`bi_BusID` varchar(20)  NOT NULL ,             
	`bi_BusNumber` varchar(20)  NULL ,             
	`bi_BusUnit` varchar(50)  NULL ,              
	`bi_SeatS` tinyint  NULL ,                      
	`bi_AddSeatS` tinyint  NULL , 
	`bi_AllowHalfSeats` tinyint  NULL ,               
	`bi_DriverID` varchar(20) NULL ,               
	`bi_Driver` varchar(30)  NULL ,                 
	`bi_Driver1ID` varchar(20)  NULL ,            
	`bi_Driver1` varchar(30)  NULL ,               
	`bi_Driver2ID` varchar(20)  NULL ,            
	`bi_Driver2` varchar(30)  NULL ,              
	`bi_RegDate` char(10)  NULL ,               
	`bi_Tonnage` tinyint  NULL ,                 
	`bi_OwnerName` varchar(30) NULL ,           
	`bi_OwnerAdd` varchar(50)  NULL ,           
	`bi_OwnerTel` varchar(20)  NULL ,            
	`bi_OwnerIdCard` varchar(50)  NULL ,         
	`bi_BusTypeID` varchar(20)  NULL ,           
	`bi_BusType` varchar(50)  NULL ,             
	`bi_EngineType` varchar(50)  NULL ,               
	`bi_EngineNumber` varchar(50)  NULL ,            
	`bi_BusIdentify` char(25)  NULL ,               
	`bi_BusChangeType` varchar(50)  NULL ,            
	`bi_Remark` varchar(200)  NULL ,                  
	`bi_IsSafetyCheck` varchar(50)  NULL ,              
	`bi_InsuranceNo` varchar(50)  NULL ,                
	`bi_InsuranceCompany` varchar(50)  NULL ,          
	`bi_InsuranceDate` char(10)  NULL ,                 
	`bi_TransportationBeginDate` char(10) NULL ,          
	`bi_TransportationEndDate` char(10) NULL ,           
	`bi_TradeBeginDate` char(10)  NULL ,               
	`bi_TradeEndDate` char (10)  NULL ,                
	`bi_RenBeginDate` char(10)  NULL ,                
	`bi_RenEndDate` char(10)  NULL ,                  
	`bi_ManagementLine` varchar(50) NULL ,             
	`bi_LineLicense` varchar(50)  NULL ,               
	`bi_LineLicenseAttached` varchar(50) NULL ,         
	`bi_AttachedEndDate` char(10) NULL ,
	`bi_RoadTransport` varchar(50) NULL ,         
	`bi_RoadTransportEndDate` char(10) NULL , 
	`bi_VehicleDriving` varchar(50) NULL ,         
	`bi_VehicleDrivingEndDate` char(10) NULL ,               
	`bi_Business` varchar(50)  NULL ,                 
	`bi_SpringCheckEndDate` char(10) NULL ,           
	`bi_ExaminationEndDate` char(10) NULL ,           
	`bi_TwoEndDate` char(10) NULL ,                 
	`bi_RankEndDate` char(10) NULL ,                
	`bi_TravelEndDate` char(10)  NULL ,             
	`bi_MonthEndDate` char(10)  NULL ,             
	`bi_CNGEndDate` char(10)  NULL ,            
	`bi_Sign` varchar(50) NULL , 
	`bi_InStationID` varchar(20) NULL , 
	`bi_InStation` varchar(20) NULL ,
	`bi_AdderID` varchar(20) NULL ,
	`bi_Adder` varchar(30) NULL ,
	`bi_AddTime` datetime NULL ,
	`bi_ModerID` varchar(20) NULL ,
	`bi_Moder` varchar(30) NULL ,
	`bi_ModTime` datetime NULL ,
	`bi_fileName` varchar(50) NULL,
	`bi_ScanPath` varchar(100) NULL,
	PRIMARY KEY (`bi_BusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_BusArt` ( 
	`ba_BusID` varchar(50)  NOT NULL ,        
	`ba_BusNumber` varchar(50)  NULL ,        
	`ba_EJWFDate` char(10)  NULL ,
	`ba_ChangeInfo` varchar(50)  NULL ,        
	`ba_OkRankDate` char(10)  NULL ,         
	`ba_Remark` varchar(200)  NULL ,
	PRIMARY KEY (`ba_BusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_BusUnitShell` ( 
	`bus_ID` int auto_increment  NOT NULL ,
	`bus_ShellID` varchar(50)  NULL ,
	`bus_Shell` varchar(50)  NULL ,
	`bus_BusUnit` varchar(500) NULL ,
	PRIMARY KEY (`bus_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_BusCard` (  
	`bc_CardID` varchar(20)  NOT NULL ,         
	`bc_BusID` varchar(20)  NULL ,              
	`bc_BusNumber` varchar(20)  NULL ,        
	`bc_RegDate` char(10)  NULL ,              
	`bc_state` varchar(50)  NULL ,               
	`bc_StationID` varchar(20)  NULL ,           
	`bc_Station` varchar(50)  NULL ,             
	`bc_Remark` varchar(200)  NULL , 
 	`bc_addpeople` varchar(20)  NULL ,
	`bc_moddate` varchar(20)  NULL , 
	`bc_modpeople` varchar(20)  NULL , 
	`bc_modderID` varchar(20)  NULL , 
	`bc_adderID` varchar(20)  NULL ,          
	PRIMARY KEY (`bc_CardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_BusUnit` (
	`bu_ID` int auto_increment NOT NULL ,  
	`bu_UnitName` varchar(200) NOT NULL ,
	`bu_UnitProperty`  varchar(50) NULL ,       
	`bu_UnitContacts` varchar(30) NULL ,                         
        `bu_UnitPhone` varchar(20) NULL , 
	`bu_UnitAdress` varchar(200) NULL ,              
	`bu_Remark` varchar(500) NULL ,                                    
	PRIMARY KEY (`bu_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_InsureInfo` ( 
	`ii_Number` varchar(20)  NOT NULL ,          
	`ii_InstallDate` char(10)  NULL ,               
	`ii_BusID` varchar(20)  NULL ,                
	`ii_InsureInc` varchar(50) NULL ,                
	`ii_JqxBeginDate` char(10)  NULL ,             
	`ii_JqxEndDate` char(10)  NULL ,              
	`ii_SyxBeginDate` char(10)  NULL ,            
	`ii_SyxEndDate` char(10)  NULL ,              
	`ii_BdNumber` varchar(50) NULL ,             
	`ii_EngineNumber` varchar(50)  NULL ,         
	`ii_BatholithNumber` varchar(50) NULL ,         
	`ii_Remark` varchar(200)  NULL ,              
	PRIMARY KEY (`ii_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_DriverInfo` (  
	`di_DriverID` varchar(50)  NOT NULL ,           
	`di_Name` varchar(50)  NULL ,                  
	`di_Sex` varchar(50)  NULL ,                    
	`di_Tel` varchar(50)  NULL ,                    
	`di_IdCard` varchar(50)  NULL ,                 
	`di_CYZGZNumber` varchar(50)  NULL ,        
	`di_Photo` varchar(200) NULL ,
-- di_BusNumber用来存放所属单位
	`di_BusNumber` varchar(50)  NULL ,            
	`di_DriverCard` varchar(50)  NULL ,             
	`di_AllowBusType` varchar(50)  NULL ,          
	`di_DriverCheckDate` char(10)  NULL ,          
	`di_CYZGZCheckDate` char(10)  NULL ,        
	`di_Remark` varchar(200)  NULL ,               
	`di_WorkEndDate` char(10)  NULL ,             
	`di_FileID` varchar(50)  NULL ,               
	`di_Finger` varchar(8000)  NULL ,
	`di_Address` varchar(200)  NULL , 
	`di_AdderID` varchar(20)  NULL ,
	`di_Adder` varchar(30)  NULL ,
	`di_AddTime` datetime NULL ,
	`di_ModerID` varchar(20)  NULL ,
	`di_Moder` varchar(30)  NULL ,
	`di_ModTime` datetime NULL ,           
	`di_fileName` varchar(50) NULL,
	`di_ScanPath` varchar(100) NULL,
	PRIMARY KEY (`di_DriverID`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_TicketAdd` (  
	`ta_ID` int auto_increment NOT NULL ,          
	`ta_Data` char(10)  NULL ,
	`ta_Time` char(5)  NULL ,                    
	`ta_BeginTicket` varchar(20)  NULL ,             
	`ta_EndTicket` varchar(20)  NULL ,              
	`ta_CurrentTicket` varchar(20)  NULL ,           
	`ta_AddNum` int NULL ,              
	`ta_LostNum` int NULL ,              
	`ta_Type` varchar(50)  NULL ,
	`ta_UserID` varchar(20)  NULL ,                  
	`ta_User` varchar(30)  NULL ,
	`ta_UserSation`  varchar(50)  NULL ,               
	`ta_Remark` varchar(100)  NULL ,              
	PRIMARY KEY (`ta_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_TicketProvide` (  
	`tp_ID` int auto_increment NOT NULL ,               
	`tp_InceptUserID` varchar(20)  NULL ,               
	`tp_InceptUser` varchar(30)  NULL , 	
	`tp_UserSation` varchar(50)  NULL ,             
	`tp_ProvideData` char(10)  NULL , 
	`tp_ProvideTime` char(5)  NULL ,                  
	`tp_BeginTicket` varchar(20)  NULL ,               
	`tp_CurrentTicket` varchar(20)  NULL ,              
	`tp_EndTicket` varchar(20)  NULL ,                 
     	`tp_InceptTicketNum` int NULL ,                   
	`tp_UseState` varchar(20)  NULL ,                  
	`tp_Type` varchar(20)  NULL ,
	`tp_ProvideUserID` varchar(20)  NULL ,                    
	`tp_ProvideUser` varchar(30)  NULL ,              
	`tp_Remark` varchar(100)  NULL ,                
	PRIMARY KEY (`tp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_InsureType` (      
	`it_InsureProductName` varchar(20)  NOT NULL ,
	`it_EffectiveDate` char(10)  NULL ,                
	`it_Price`  decimal(12,1) NOT NULL ,                   
	`it_RiskCode` varchar(10)  NULL ,                 
	`it_MakeCode` varchar(20)  NULL ,                       
	`it_RationType` varchar(10) NULL ,                  
	`it_AgentCode` varchar(20)  NULL ,                    
	`it_VisaCode` varchar(20) NULL ,               
	`it_Perfix` varchar(10) NULL ,                 
	`it_AInsuranceValue` decimal(12,1)  NULL ,                  
	`it_BInsuranceValue` decimal(12,1)  NULL , 
	`it_ComCode` varchar(10)  NULL ,
	`it_HandlerCode` varchar(20) NULL ,
	`it_Handler1Code` varchar(20) NULL ,
	`it_OperatorCode` varchar(20) NULL ,
	`it_ApporverCode` varchar(20) NULL               
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_TicketType` (      
	`tt_ID` int auto_increment  NOT NULL,
	`tt_TypeName` varchar(30)  NOT NULL ,
	`tt_AdderID` varchar(20) NULL , 
	`tt_Adder` varchar(30) NULL ,
	`tt_AddTime` datetime NULL , 
	`tt_ModerID` varchar(20) NULL , 
	`tt_Moder` varchar(30) NULL ,
	`tt_ModTime` datetime NULL ,
	`tt_Remark` varchar(200) NULL ,
	PRIMARY KEY (`tt_ID`)                  	              
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_DelTicket` (  
	`dt_ID` int auto_increment NOT NULL ,               
	`dt_InceptUserID` varchar(20)  NULL ,               
	`dt_InceptUser` varchar(30)  NULL , 
	`dt_UserSation` varchar(50)  NULL ,             
	`dt_ProvideDate` char(10)  NULL ,                  
	`dt_BeginTicket` varchar(20)  NULL ,                            
	`dt_EndTicket` varchar(20)  NULL ,                 
     	`dt_DelTicketNum` int NULL ,                  
	`dt_Type` varchar(20)  NULL ,     
	`dt_DeleteTime` datetime  NULL ,            
	`dt_DeletorID` varchar(20)  NULL ,                    
	`dt_DeletorName` varchar(30)  NULL , 
	`dt_DeletorSation` varchar(50)  NULL ,  
	`dt_DeletorSationID` varchar(50)  NULL ,            
	`dt_DelReason` varchar(100)  NULL ,                
	PRIMARY KEY (`dt_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_ticket_DelResult` (  
	`dr_ID` int auto_increment NOT NULL ,           
	`dr_Desp` varchar(30)  NULL ,               
	`dr_mncode` varchar(10)  NULL ,                         
	PRIMARY KEY (`dr_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sell_InsureTicket` (      
	`itt_SyncCode` varchar(30)  NOT  NULL ,
	`itt_InsureTicketNo` varchar(20) NOT NULL , 
	`itt_TicketNo` varchar(20) NOT NULL ,                 
	`itt_CreatedType` tinyint NULL ,                   
	`itt_Status` tinyint  NULL ,                 
	`itt_IdCard` varchar(30)  NULL ,                       
	`itt_Name` varchar(20) NULL ,                  
	`itt_Beneficiary` varchar(20)  NULL ,                                
	`itt_TbInsureProductID` varchar(10) NULL ,                 
	`itt_InsureProductName`  varchar(20)  NULL ,                  
	`itt_Price` decimal(12,1)  NULL , 
	`itt_AinsuranceValue`decimal(12,1)  NULL ,
	`itt_BinsuranceValue` decimal(12,1) NULL ,
	`itt_CinsuranceValue` decimal(12,1) NULL ,
	`itt_DinsuranceValue` decimal(12,1) NULL ,
	`itt_IsUpMoney` tinyint NULL ,
	`itt_UpMoneyID` varchar(20) NULL ,   
	`itt_Saler` varchar(20) NULL ,
	`itt_PtrReserveID` varchar(20) NULL ,
	`itt_SaleComputer` varchar(20) NULL ,
	`itt_SaleTime` datetime NULL , 
	`itt_RiskCode` char(3) NULL ,
	`itt_PationType` varchar(20) NULL ,
	`itt_AgentCode` varchar(20) NULL ,
	`itt_VisaCode` varchar(20) NULL , 
	`itt_PolicyNo` varchar(30) NULL ,
	`itt_UploadStatus` tinyint NULL ,
	`itt_UploadDate` datetime NULL ,
	`itt_ReturnUploadStatus` tinyint NULL , 
	`itt_ReturnUploadDate` datetime NULL , 
	`itt_IDCardType` varchar(5) NULL , 
	`itt_MakeCode` varchar(20) NULL , 
	`itt_ComCode` varchar(20) NULL ,
	`itt_HandlerCode` varchar(20) NULL , 
	`itt_Handler1Code` varchar(20) NULL ,
	`itt_OperatorCode` varchar(20) NULL ,
	`itt_ApporverCode` varchar(20) NULL ,
	`itt_TotalSum` varchar(20) NULL , 
	`itt_ReserveName` varchar(50) NULL ,
	`itt_ADOrgCode` varchar(10) NULL ,
	`itt_ADOrgName` varchar(50) NULL ,
	`itt_ADOrgValue` varchar(20) NULL ,
	`itt_SeatNo` varchar(10) NULL , 
	`itt_RideDate` datetime NULL ,
	`itt_ScheduleID` varchar(20) NULL ,
	`itt_ScheduleValue` varchar(20) NULL ,
	`itt_FormName` varchar(50) NULL , 
	`itt_FormValue` varchar(20) NULL ,
	`itt_ReachName` varchar(50) NULL ,
	`itt_ReachValue` varchar(20) NULL ,
	`itt_IsActive` tinyint NULL , 
	`itt_AdClientID` varchar(20) NULL ,
	`itt_AdOrgID` varchar(20) NULL ,
	`itt_Created` datetime NULL ,
	`itt_CreatedBY` varchar(20) NULL , 
	`itt_UpdateBY` varchar(20) NULL ,
	`itt_Update` datetime NULL ,  
	`itt_SalerName` varchar(20) NULL ,
	`itt_IdAdderss` varchar(200) NULL , 
	`itt_SaverResult` varchar(20) NULL ,
	`itt_SendCount` int NULL , 
	`itt_NextSendTime` datetime NULL ,
	`itt_ReturnSendCount` int NULL , 
	`itt_ReturnNextSendTime` datetime NULL , 
	`itt_ReturnSaveResult` varchar(20) NULL , 
	`itt_RowID` varchar(20) NULL ,
	PRIMARY KEY (`itt_InsureTicketNo`)                   
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sell_ErrInsureTicket` (      
	`eitt_SyncCode` varchar(30)  NOT  NULL ,
	`eitt_InsureTicketNo` varchar(20) NOT NULL , 
	`eitt_TicketNo` varchar(20) NOT NULL ,                 
	`eitt_CreatedType` tinyint NULL ,                                  
	`eitt_IdCard` varchar(30)  NULL ,                       
	`eitt_Name` varchar(20) NULL ,                  
	`eitt_Beneficiary` varchar(20)  NULL ,                                                 
	`eitt_Price` decimal(12,1)  NULL , 
	`eitt_AinsuranceValue`decimal(12,1)  NULL ,
	`eitt_BinsuranceValue` decimal(12,1) NULL ,
	`eitt_CinsuranceValue` decimal(12,1) NULL ,
	`eitt_DinsuranceValue` decimal(12,1) NULL ,
	`eitt_Cause` varchar(200)  NULL ,                
	`eitt_ErrTime` char(5)  NULL ,                   
	`eitt_ErrDate` char(10)  NULL ,                  
	`eitt_ErrUserID` varchar(20) NULL ,               
	`eitt_ErrUser` varchar(30)  NULL , 
	`eitt_StationName` varchar(30) NULL ,               
	PRIMARY KEY (`eitt_InsureTicketNo`)                   
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_AdOrg` (
	`ao_ID` int auto_increment NOT NULL ,  
	`ao_OrgCode` varchar(20) NULL ,       
	`ao_OrgName` varchar(100) NULL ,           
	`ao_HelpCode` varchar(10)  NULL ,
	`ao_AdderID` varchar(20) NULL ,           
	`ao_Adder` varchar(30)  NULL ,                
        `ao_AddTime` datetime NULL ,             
	`ao_ModerID` varchar(20)  NULL ,                 
	`ao_Moder` varchar(30)  NULL ,
	`ao_ModTime` datetime NULL ,   
	`ao_Remark` varchar(50)  NULL ,
	PRIMARY KEY (`ao_ID`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_FeeType` (
	`ft_ID` int auto_increment NOT NULL ,  
	`ft_FeeTypeName` varchar(20) NULL ,
	`ft_FeeTypeComputer` varchar(30) NULL , 
	`ft_FeePercent` decimal(12,2) NULL , 
	`ft_FeeFix` decimal(12,2) NULL ,             
	`ft_HelpCode` varchar(10)  NULL ,
	`ft_AdderID` varchar(20) NULL ,           
	`ft_Adder` varchar(30)  NULL ,                
        `ft_AddTime` datetime NULL ,             
	`ft_ModerID` varchar(20)  NULL ,                 
	`ft_Moder` varchar(30)  NULL ,
	`ft_ModTime` datetime NULL ,   
	`ft_Remark` varchar(50)  NULL ,
	PRIMARY KEY (`ft_ID`)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sell_SellTicket` (  
	`st_TicketID` varchar(20) NOT NULL ,                 
	`st_NoOfRunsID` varchar(20)  NULL ,                  
	`st_LineID` varchar(30)  NULL ,                       
	`st_NoOfRunsdate` char(10)  NULL ,                   
	`st_BeginStationTime` char(5)  NULL ,                 
	`st_StopStationTime` char(5)  NULL ,                  
	`st_Distance` decimal(12,2) NULL ,                     
	`st_BeginStationID` varchar(20)  NULL ,               
	`st_BeginStation` varchar(50)  NULL ,                 
	`st_FromStationID` varchar(20)  NULL ,              
	`st_FromStation` varchar(50)  NULL ,                 
	`st_ReachStationID` varchar(20)  NULL ,              
	`st_ReachStation` varchar(50)  NULL ,                 
	`st_EndStationID` varchar(20)  NULL ,                
	`st_EndStation` varchar(50)  NULL ,                   
	`st_SellPrice` decimal(12,1) NULL ,                    
	`st_SellPriceType` varchar(50)  NULL ,                 
	`st_ColleSellPriceType` varchar(2000)  NULL ,          
	`st_TotalMan` smallint NULL ,                         
	`st_FullPrice` decimal(12,1) NULL ,                   
	`st_HalfPrice` decimal(12,1) NULL ,                   
	`st_StandardPrice` decimal(12,1) NULL , 
	`st_BalancePrice` decimal(12,1) NULL ,             
	`st_ServiceFee` decimal(12,2) NULL ,                 
	`st_otherFee1` decimal(12,2) NULL ,
	`st_otherFee2` decimal(12,2) NULL ,
	`st_otherFee3` decimal(12,2) NULL ,
	`st_otherFee4` decimal(12,2) NULL ,
	`st_otherFee5` decimal(12,2) NULL ,
	`st_otherFee6` decimal(12,2) NULL ,
	`st_StationID` varchar(20)  NULL ,               
	`st_Station` varchar(50)  NULL ,                  
	`st_SellDate` char(10)  NULL ,                   
	`st_SellTime` char(5)  NULL ,                   
	`st_BusModelID` varchar(50)  NULL ,            
	`st_BusModel` varchar(50)  NULL ,              
	`st_SeatID` varchar(200)  NULL ,               
	`st_SellID` varchar(20)  NULL ,                
	`st_SellName` varchar(30)  NULL ,             
	`st_FreeSeats` smallint NULL ,                  
	`st_SafetyTicketID` varchar(20)  NULL ,
	`st_SafetyTicketNumber` smallint NULL ,
	`st_SafetyTicketMoney` decimal(12,2)  NULL ,
	`st_SafetyTicketPassengerID` varchar(20)  NULL ,
	`st_TicketState` smallint NULL ,            
	`st_IsBalance` tinyint NULL ,                      
	`st_BalanceDateTime` datetime NULL ,           
	`st_AlterTicket` int NULL , 
	`st_StationBalance` tinyint NULL ,                    
	PRIMARY KEY (`st_TicketID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sell_SellTicketTemp` ( 
	`stt_TicketID` varchar(20)  NOT NULL ,                
	`stt_SeatID` varchar(50)  NULL ,                      
	`stt_NoOfRunsID` varchar(20)  NULL ,                 
	`stt_LineID` varchar(30)  NULL ,                     
	`stt_NoOfRunsdate` char(10)  NULL ,                 
	`stt_BeginStationTime` char(5)  NULL ,               
	`stt_StopStationTime` char(5) NULL ,                 
	`stt_Distance` decimal(12,2)  NULL ,                   
	`stt_BeginStationID` varchar(20) NULL ,                 
	`stt_BeginStation` varchar(50)  NULL ,                  
	`stt_FromStationID` varchar(20)  NULL ,                
	`stt_FromStation` varchar(50)  NULL ,                  
	`stt_ReachStationID` varchar(20)  NULL ,                
	`stt_ReachStation` varchar(50)  NULL ,                  
	`stt_EndStationID` varchar(20)  NULL ,                  
	`stt_EndStation` varchar(50)  NULL ,                    
	`stt_SellPrice` decimal(12,1) NULL ,                     
	`stt_SellPriceType` varchar(50)  NULL ,                 
	`stt_FullPrice` decimal(12,1) NULL ,                     
	`stt_HalfPrice` decimal(12,1) NULL ,                     
	`stt_StandardPrice` decimal(12,1) NULL , 
	`stt_BalancePrice` decimal(12,1) NULL ,                  
	`stt_ServiceFee` decimal(12,2) NULL ,                    
	`stt_otherFee1` decimal(12,2) NULL ,
	`stt_otherFee2` decimal(12,2) NULL ,
	`stt_otherFee3` decimal(12,2) NULL ,
	`stt_otherFee4` decimal(12,2) NULL ,
	`stt_otherFee5` decimal(12,2) NULL ,
	`stt_otherFee6` decimal(12,2) NULL ,
	`stt_SellerStationID` varchar(20)  NULL ,                  
	`stt_SellerStation` varchar(50)  NULL ,                    
	`stt_BusModelID` varchar(20)  NULL ,                   
	`stt_BusModel` varchar(50)  NULL ,                     
	`stt_BusID` varchar(20)  NULL ,                        
	`stt_BusCard` varchar(20)  NULL ,                      
	`stt_SellID` varchar(20)  NULL ,                        
	`stt_SellName` varchar(30)  NULL ,
	`stt_SafetyTicketID` varchar(20)  NULL ,
	`stt_SafetyTicketNumber` smallint NULL ,
	`stt_SafetyTicketMoney` decimal(12,2)  NULL ,
	`stt_SafetyTicketPassengerID` varchar(20)  NULL ,
	PRIMARY KEY (`stt_TicketID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sell_ReturnTicket` (    
	`rtk_TicketID` varchar(20)  NOT NULL ,              
	`rtk_ReturnTicketID` varchar(20)  NULL ,            
	`rtk_ReturnType` varchar(50)  NULL ,                
	`rtk_ReturnPrice` decimal(12,1) NULL ,
	`rtk_SignTime` char(5)  NULL ,                   
	`rtk_SignDate` char(10)  NULL ,                  
	`rtk_SignUserID` varchar(20)  NULL ,             
	`rtk_SignUser` varchar(30) NULL ,               
	`rtk_ReturnTime` char(6)  NULL ,                   
	`rtk_ReturnDate` char(10)  NULL ,                  
	`rtk_ReturnUserID` varchar(20)  NULL ,             
	`rtk_ReturnUser` varchar(30) NULL ,                
	`rtk_ReturnRate` decimal(12,2) NULL ,              
	`rtk_SXPrice` decimal(12,1) NULL ,                
	`rtk_NoOfRunsID` varchar(20)  NULL ,            
	`rtk_NoOfRunsdate` char(10)  NULL ,               
	`rtk_BeginStationTime` char(5) NULL ,               
	`rtk_StopStationTime` char(5)  NULL ,              
	`rtk_SellPrice` decimal(12,1) NULL ,                 
	`rtk_SellPriceType` varchar(50)  NULL ,             
	`rtk_SellDate` char(10)  NULL ,                    
	`rtk_SellTime` char(8)  NULL ,                    
	`rtk_SeatID` varchar(200)  NULL ,                 
	`rtk_FreeSeats` smallint NULL ,                    
	`rtk_SafetyTicketNumber` smallint NULL ,           
	`rtk_BeginStationID` varchar(20)  NULL ,          
	`rtk_BeginStation` varchar(50) NULL ,             
	`rtk_FromStationID` varchar(20) NULL ,           
	`rtk_FromStation` varchar(50)  NULL ,           
	`rtk_ReachStationID` varchar(20)  NULL ,        
	`rtk_ReachStation` varchar(50)  NULL ,          
	`rtk_EndStationID` varchar(20)  NULL ,         
	`rtk_EndStation` varchar(50)  NULL ,           
	`rtk_StationID` varchar(20)  NULL ,            
	`rtk_Station` varchar(50)  NULL ,              
	`rtk_IsBalance` tinyint NULL ,                    
	`rtk_BalanceDateTime` datetime NULL  ,       
	PRIMARY KEY (`rtk_ReturnTicketID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sell_ReturnType` (  
	`rte_ReturnType` varchar(50)  NOT NULL ,    
	`rte_ReturnRate` decimal(12,2) NULL ,          
	`rte_ReturnTimeBegin` char(10) NULL ,                
	`rte_ReturnTimeEnd` char(10) NULL                  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sell_ErrTicket` (      
	`et_TicketID` varchar(20)  NOT NULL ,             
	`et_NoOfRunsID` varchar(20)  NULL ,              
	`et_NoOfRunsdate` char(10)  NULL ,               
	`et_BeginStationTime` char(5)  NULL ,             
	`et_StopStationTime` char(5)  NULL ,              
	`et_SellPrice` decimal(12,1) NULL ,                
	`et_SellPriceType` varchar(50) NULL ,              
	`et_SellDate` char(10)  NULL ,                   
	`et_SellTime` char(8)  NULL ,                    
	`et_SeatID` varchar(200)  NULL ,                 
	`et_FreeSeats` smallint NULL ,                    
	`et_SafetyPrice` smallint NULL ,                 
	`et_Cause` varchar(200)  NULL ,                
	`et_ErrTime` char(5)  NULL ,                   
	`et_ErrDate` char(10)  NULL ,                  
	`et_ErrUserID` varchar(20) NULL ,               
	`et_ErrUser` varchar(30)  NULL ,                
	`et_BeginStationID` varchar(20)  NULL ,         
	`et_BeginStation` varchar(50)  NULL ,           
	`et_FromStationID` varchar(20)  NULL ,         
	`et_FromStation` varchar(50)  NULL ,           
	`et_ReachStationID` varchar(20)  NULL ,        
	`et_ReachStation` varchar(50)  NULL ,          
	`et_EndStationID` varchar(20)  NULL ,          
	`et_EndStation` varchar(50)  NULL ,            
	`et_StationID` varchar(20) NULL ,               
	`et_Station` varchar(50) NULL ,                 
	`et_IsBalance` tinyint NULL ,                      
	`et_BalanceDateTime` datetime NULL ,           
	PRIMARY KEY (`et_TicketID`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sell_AlterTicket` (   
	`at_TicketID` varchar(20) NOT NULL ,         
	`at_NoOfRunsID` varchar(20)  NULL ,          
	`at_LineID` varchar(30)  NULL ,              
	`at_NoOfRunsdate` char(10)  NULL ,            
	`at_BeginStationTime` char(5)  NULL ,         
	`at_StopStationTime` char(5)  NULL ,         
	`at_Distance` decimal(12,1) NULL ,                   
	`at_BeginStationID` varchar(20)  NULL ,         
	`at_BeginStation` varchar(50)  NULL ,       
	`at_FromStationID` varchar(20)  NULL ,       
	`at_FromStation` varchar(50)  NULL ,         
	`at_ReachStationID` varchar(20)  NULL ,      
	`at_ReachStation` varchar(50)  NULL ,        
	`at_EndStationID` varchar(20)  NULL ,        
	`at_EndStation` varchar(50)  NULL ,          
	`at_SellPrice` decimal(12,1) NULL ,          
	`at_SellPriceType` varchar(50)  NULL ,         
	`at_ColleSellPriceType` varchar(2000)  NULL ,
	`at_TotalMan` smallint NULL ,                
	`at_FullPrice` decimal(12,1) NULL ,          
	`at_HalfPrice` decimal(12,1) NULL ,          
	`at_StandardPrice` decimal(12,1) NULL ,
	`at_BalancePrice` decimal(12,1) NULL ,          
	`at_ServiceFee` decimal(12,2) NULL ,         
	`at_otherFee1` decimal(12,2) NULL ,          
	`at_otherFee2` decimal(12,2) NULL ,          
	`at_otherFee3` decimal(12,2) NULL ,          
	`at_otherFee4` decimal(12,2) NULL ,          
	`at_otherFee5` decimal(12,2) NULL ,          
	`at_otherFee6` decimal(12,2) NULL ,          
	`at_AlterStationID` varchar(20)  NULL ,       
	`at_AlterStation` varchar(50)  NULL ,          
	`at_SellDate` char(10)  NULL ,               
	`at_SellTime` char(8)  NULL ,                
	`at_BusModelID` varchar(20)  NULL ,          
	`at_BusModel` varchar(50)  NULL ,            
	`at_SeatID` varchar(200)  NULL ,             
	`at_SellID` varchar(20)  NULL ,              
	`at_SellName` varchar(30)  NULL ,            
	`at_FreeSeats` smallint NULL ,               
	`at_SafetyTicketNumber` smallint NULL ,      
	`at_SafetyTicketMoney` decimal(12,1) NULL ,   
	`at_AlterDateTime` datetime NULL ,           
	`at_AlterSellID` varchar(20)  NULL ,         
	`at_AlterSellName` varchar(30)  NULL ,       
	`at_Remark` varchar(500)  NULL,              
	PRIMARY KEY (`at_TicketID`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_ticket_ErrDelResult` (
	`er_ID` int auto_increment NOT NULL,
	`er_Desp` varchar(30) NULL,
	`er_mncode` varchar(10) NULL,
	PRIMARY KEY (`er_ID`)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_ticket_ResetResult` (  
	`rr_ID` int auto_increment NOT NULL ,           
	`rr_Desp` varchar(30)  NULL ,               
	`rr_mncode` varchar(10)  NULL ,                         
	PRIMARY KEY (`rr_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sell_ResetTicket` (  
	`rt_ID` int auto_increment NOT NULL ,               
	`rt_ResetUserID` varchar(20)  NULL ,               
	`rt_ResetUser` varchar(30)  NULL , 
	`rt_UserSation` varchar(50)  NULL ,             
	`rt_ResetDate` date  NULL ,                   
	`rt_BeginTicket` varchar(20)  NULL ,               
	`rt_CurrentTicket` varchar(20)  NULL ,              
	`rt_EndTicket` varchar(20)  NULL ,                 
     	`rt_InceptTicketNum` int NULL ,                                   
	`rt_Type` varchar(20)  NULL ,           
	`rt_Remark` varchar(100)  NULL ,                
	PRIMARY KEY (`rt_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sell_HisSellTicket` ( 
	`sth_TicketID` varchar(20)  NOT NULL ,          
	`sth_NoOfRunsID` varchar(20)  NULL ,           
	`sth_NoOfRunsdate` char(10)  NULL ,            
	`sth_BeginStationTime` char(5)  NULL ,          
	`sth_StopStationTime` char(5)  NULL ,           
	`sth_Distance` smallint NULL ,                  
	`sth_BeginStationID` varchar(20)  NULL ,        
	`sth_BeginStation` varchar(50)  NULL ,          
	`sth_FromStationID` varchar(20) NULL ,          
	`sth_FromStation` varchar(50)  NULL ,           
	`sth_ReachStationID` varchar(20) NULL ,         
	`sth_ReachStation` varchar(50)  NULL ,          
	`sth_EndStationID` varchar(20)  NULL ,          
	`sth_EndStation` varchar(50)  NULL ,            
	`sth_SellPrice` decimal(12,1) NULL ,             
	`sth_SellPriceType` varchar(20) NULL ,           
	`sth_ColleSellPriceType` varchar(2000)  NULL ,   
	`sth_FullPrice` decimal(12,1) NULL ,             
	`sth_HalfPrice` decimal(12,1) NULL ,             
	`sth_StandardPrice` decimal(12,1) NULL , 
	`sth_BalancePrice` decimal(12,1) NULL ,          
	`sth_ServiceFee` decimal(12,2) NULL ,           
	`sth_otherFee1` decimal(12,2) NULL ,
	`sth_otherFee2` decimal(12,2) NULL ,
	`sth_StationID` varchar(20)  NULL ,             
	`sth_Station` varchar(50)  NULL ,               
	`sth_SellDate` char(10)  NULL ,                
	`sth_SellTime` char(5)  NULL ,                 
	`sth_BusModelID` varchar(20)  NULL ,          
	`sth_BusModel` varchar(20)  NULL ,            
	`sth_SeatID` varchar(200)  NULL ,              
	`sth_SellID` varchar(20)  NULL ,               
	`sth_SellName` varchar(30)  NULL ,            
	`sth_FreeSeats` smallint NULL ,                
	`sth_SafetyPrice` smallint NULL ,               
	`sth_SafetyMoney` decimal(12,1) NULL ,        
	`sth_TicketState` smallint NULL ,              
	`sth_IsBalance` tinyint NULL ,                   
	`sth_BalanceDateTime` datetime NULL ,       
	PRIMARY KEY (`sth_TicketID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sell_LockSeat` (
	`ls_ID` int auto_increment NOT NULL ,   
	`ls_LockID` varchar(20)  NOT NULL ,    
	`ls_NoOfRunsID` varchar(20) NULL ,          
	`ls_NoOfRunsdate` char(10) NULL ,
	`ls_FromStationID` varchar(20)  NULL ,       
	`ls_FromStation` varchar(50)  NULL ,          
	`ls_ReachStationID` varchar(20)  NULL ,        
	`ls_ReachStation` varchar(50)  NULL ,
	`ls_TicketID` varchar(20)  NULL ,               
	`ls_SeatID` int NULL ,
	`ls_Type` int NULL ,
	`ls_Price` decimal(12,1) NULL , 
	`ls_sellID` varchar(20) NULL ,
	PRIMARY KEY (`ls_ID`)                 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_chk_CheckTicket` ( 
	`ct_TicketID` varchar(20)  NOT NULL ,          
	`ct_NoOfRunsID` varchar(20)  NULL ,           
	`ct_LineID` varchar(30)  NULL ,               
	`ct_NoOfRunsdate` char(10)  NULL ,            
	`ct_BeginStationTime` char(5) NULL ,            
	`ct_StopStationTime` char(5)  NULL ,           
	`ct_Distance` decimal(12,2) NULL ,                     
	`ct_BeginStationID` varchar(20)  NULL ,       
	`ct_BeginStation` varchar(50)  NULL ,         
	`ct_FromStationID` varchar(20)  NULL ,       
	`ct_FromStation` varchar(50)  NULL ,          
	`ct_ReachStationID` varchar(20)  NULL ,        
	`ct_ReachStation` varchar(50)  NULL ,          
	`ct_EndStationID` varchar(20)  NULL ,         
	`ct_EndStation` varchar(50)  NULL ,           
	`ct_SellPrice` decimal(12,1) NULL ,            
	`ct_SellPriceType` varchar(50)  NULL ,         
	`ct_ColleSellPriceType` varchar(2000) NULL ,    
	`ct_TotalMan` smallint NULL ,                 
	`ct_FullPrice` decimal(12,1) NULL ,            
	`ct_HalfPrice` decimal(12,1) NULL ,            
	`ct_StandardPrice` decimal(12,1) NULL , 
	`ct_BalancePrice` decimal(12,1) NULL ,         
	`ct_ServiceFee` decimal(12,2) NULL ,          
	`ct_otherFee1` decimal(12,2) NULL ,
	`ct_otherFee2` decimal(12,2) NULL ,
	`ct_otherFee3` decimal(12,2) NULL ,
	`ct_otherFee4` decimal(12,2) NULL ,
	`ct_otherFee5` decimal(12,2) NULL ,
	`ct_otherFee6` decimal(12,2) NULL ,
	`ct_StationID` varchar(20)  NULL ,            
	`ct_Station` varchar(50)  NULL ,              
	`ct_SellDate` char(10)  NULL ,               
	`ct_SellTime` char(8)  NULL ,               
	`ct_BusModelID` varchar(20)  NULL ,        
	`ct_BusModel` varchar(50)  NULL ,          
     	`ct_BusID` varchar(20)  NULL ,            
     	`ct_BusNumber` varchar(20)  NULL ,       
	`ct_SeatID` varchar(200)  NULL ,          
     	`ct_SellID` varchar(20)  NULL ,             
	`ct_SellName` varchar(30)  NULL ,          
	`ct_FreeSeats` smallint NULL ,             
	`ct_SafetyTicketID` varchar(20)  NULL ,
	`ct_SafetyTicketNumber` smallint NULL ,
	`ct_SafetyTicketMoney` decimal(12,2)  NULL ,
	`ct_SafetyTicketPassengerID` varchar(20)  NULL ,
	`ct_CheckTicketWindow` varchar(20) NULL ,   
	`ct_CheckerID` varchar(20)  NULL ,          
	`ct_Checker` varchar(30)  NULL ,            
	`ct_CheckDate` char(10)  NULL ,            
	`ct_CheckTime` char(5)  NULL ,             
	`ct_BalanceNO` varchar(50)  NULL ,
	`ct_IsBalance` tinyint NULL ,                      
	`ct_BalanceDateTime` datetime NULL ,           
	PRIMARY KEY (`ct_TicketID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_chk_CheckTicketTemp` ( 
	`ctt_TicketID` varchar(20)  NOT NULL ,             
	`ctt_NoOfRunsID` varchar(20)  NULL ,              
	`ctt_LineID` varchar(30)  NULL ,                   
	`ctt_NoOfRunsdate` char(10)  NULL ,               
	`ctt_BeginStationTime` char(5) NULL ,              
	`ctt_StopStationTime` char(5)  NULL ,           	
	`ctt_Distance` decimal(12,2) NULL ,                        
	`ctt_BeginStationID` varchar(20)  NULL ,          
	`ctt_BeginStation` varchar(50)  NULL ,            
	`ctt_FromStationID` varchar(20)  NULL ,           
	`ctt_FromStation` varchar(50)  NULL ,             
	`ctt_ReachStationID` varchar(20) NULL ,            
	`ctt_ReachStation` varchar(50)  NULL ,             
	`ctt_EndStationID` varchar(20)  NULL ,             
	`ctt_EndStation` varchar(50)  NULL ,               
	`ctt_SellPrice` decimal(12,1) NULL ,                 
	`ctt_SellPriceType` varchar(50)  NULL ,              
	`ctt_ColleSellPriceType` varchar(2000) NULL ,         
	`ctt_TotalMan` smallint NULL ,                      
	`ctt_FullPrice` decimal(12,1) NULL ,                  
	`ctt_HalfPrice` decimal(12,1) NULL ,                  
	`ctt_StandardPrice` decimal(12,1) NULL , 
	`ctt_BalancePrice` decimal(12,1) NULL ,               
	`ctt_ServiceFee` decimal(12,2) NULL ,                
	`ctt_otherFee1` decimal(12,2) NULL ,
	`ctt_otherFee2` decimal(12,2) NULL ,
	`ctt_otherFee3` decimal(12,2) NULL ,
	`ctt_otherFee4` decimal(12,2) NULL ,
	`ctt_otherFee5` decimal(12,2) NULL ,
	`ctt_otherFee6` decimal(12,2) NULL ,
	`ctt_StationID` varchar(20)  NULL ,                 
	`ctt_Station` varchar(50) NULL ,                     
	`ctt_SellDate` char(10)  NULL ,                     
	`ctt_SellTime` char(8)  NULL ,                      
	`ctt_BusModelID` varchar(20)  NULL ,               
	`ctt_BusModel` varchar(50)  NULL ,                 
	`ctt_BusID` varchar(20)  NULL ,                    
    	`ctt_BusNumber` varchar(50)  NULL ,               
	`ctt_SeatID` varchar(200)  NULL ,                  
	`ctt_SellID` varchar(20)  NULL ,                    
	`ctt_SellName` varchar(30)  NULL ,                 
	`ctt_FreeSeats` smallint NULL ,                    
	`ctt_SafetyTicketID` varchar(20)  NULL ,
	`ctt_SafetyTicketNumber` smallint NULL ,
	`ctt_SafetyTicketMoney` decimal(12,2)  NULL ,
	`ctt_SafetyTicketPassengerID` varchar(20)  NULL ,
	`ctt_CheckTicketWindow` varchar(20) NULL , 
	`ctt_TicketState` smallint NULL , 
	`ctt_AllCheck` smallint NULL ,        
	`ctt_CheckerID` varchar(20)  NULL ,               
	`ctt_Checker` varchar(30)  NULL ,                 
	`ctt_CheckDate` char(10)  NULL ,                 
	`ctt_CheckTime` char(5)  NULL ,                 
--	`ctt_BalanceNO` varchar(50)  NULL ,             
	PRIMARY KEY (`ctt_TicketID`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_chk_CheckTemp` (
	`ct_ID` int auto_increment NOT NULL ,         
	`ct_NoOfRunsID` varchar(20)  NOT NULL ,           
	`ct_NoOfRunsdate` char(10)  NOT NULL ,            
	`ct_NoOfRunsTime` char(5)  NULL ,               
	`ct_BusID` varchar(20)  NULL ,                    
	`ct_BusNumber` varchar(20)  NULL , 
	`ct_ReportDateTime` datetime NULL ,          
	`ct_EndStation` varchar(50)  NULL ,                
	`ct_Allticket` varchar(50)  NULL ,                  
	`ct_TotalSeats` varchar(50)  NULL ,                
	`ct_CheckTicketWindow` varchar(20)  NULL ,        
	`ct_LineID` varchar(30)  NULL ,                   
	`ct_UserID` varchar(20)  NOT NULL ,              
	`ct_User` varchar(30)  NULL , 
	`ct_Flag` char(2) NULL ,
	`ct_SoldTicketNum` smallint DEFAULT 0 ,
	`ct_CheckedTicketNum` smallint DEFAULT 0 ,
	PRIMARY KEY (`ct_ID`)
--	PRIMARY KEY (`ct_NoOfRunsID`, `ct_NoOfRunsdate`, `ct_BusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sch_Report` (   
	`rt_ID` int auto_increment NOT NULL ,         
	`rt_NoOfRunsID` varchar(20)  NULL ,       
	`rt_LineID` varchar(30)  NULL ,            
	`rt_NoOfRunsdate` char(10)  NULL ,         
	`rt_AttemperStationID` varchar(20)  NULL ,    
	`rt_AttemperStation` varchar(50) NULL ,        
	`rt_ReportDateTime` datetime NULL ,          
	`rt_BusID` varchar(20)  NULL ,              
	`rt_BusCard` varchar(20)  NULL ,            
	`rt_BusModelID` varchar(20)  NULL ,         
	`rt_BusModel` varchar(50)  NULL ,           
	`rt_BeginStationID` varchar(20)  NULL ,       
	`rt_BeginStation` varchar(50)  NULL ,         
	`rt_FromStationID` varchar(20)  NULL ,       
	`rt_FromStation` varchar(50)  NULL ,         
	`rt_EndStationID` varchar(20)  NULL ,        
	`rt_EndStation` varchar(50)  NULL ,          
	`rt_DriverID` varchar(20)  NULL ,            
	`rt_Driver` varchar(30)  NULL ,              
	`rt_Driver1ID` varchar(20)  NULL ,
	`rt_Driver1` varchar(30)  NULL ,
	`rt_Driver2ID` varchar(20) NULL ,
	`rt_Driver2` varchar(30)  NULL ,
	`rt_ReportCircs` varchar(50)  NULL ,            
	`rt_ReportUser` varchar(30)  NULL ,            
	`rt_Allticket` tinyint NULL ,                      
	`rt_Register` varchar(50)  NULL ,              
	`rt_SupTicketRen` int NULL ,                  
	`rt_Remark` varchar(1000)  NULL ,             
	`rt_SeatNum` smallint NULL ,
	`rt_CheckTicketWindow` varchar(20)  NULL ,             
	PRIMARY KEY (`rt_ID`)
--	PRIMARY KEY (`rt_NoOfRunsID`, `rt_NoOfRunsdate`, `rt_BusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sch_AndNoOfRuns` (                  
	`anr_NoOfRunsID` varchar(20) NOT NULL ,
	`anr_NoOfRunsdate` char(10)  NULL , 
	`anr_AndNoOfRunsID` varchar(20)  NULL ,                                       
	`anr_AndNoOfRunsdate` char(10)  NULL ,
        `anr_AndTime` datetime  NULL ,
	`anr_AnderID` varchar(20)  NULL ,
	`anr_Ander` varchar(30)  NULL , 
	`anr_Seats` int  NULL , 
	`anr_HalfSeats` int  NULL ,                                      
	`anr_AndSeatID` varchar(200)  NULL ,                                
	PRIMARY KEY (`anr_NoOfRunsID`,`anr_NoOfRunsdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sch_SpeechNoOfRunsID` (
  `sn_StopStationTime` varchar(50) default NULL,
  `sn_EndStation` varchar(50) default NULL,
  `sn_NoOfRunsID` varchar(20) default NULL,
  `sn_Check` varchar(20) default NULL,
  `sn_BusNumber` varchar(20) default NULL,
  `sn_PreviousTime` varchar(5) default NULL,
  `sn_CheckState` varchar(20) NOT NULL,
  `sn_Beginstation` varchar(20) default NULL,
  `sn_NoOfRunsdate` date default NULL,
  `sn_FromStationID` varchar(20) default NULL,
  `sn_FromStation` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sch_PreviousTime` (
  `pt_Stop` varchar(3) NOT NULL default '5',
  `pt_Current` varchar(3) NOT NULL default '20',
  `pt_Hasten` varchar(3) NOT NULL default '25',
  `pt_StopRepeat` varchar(3) NOT NULL default '2',
  `pt_HastenRepeat` varchar(3) NOT NULL default '2',
  `pt_CurrentRepeat` varchar(3) NOT NULL default '2',
  `pt_WaitRepeat` varchar(3) NOT NULL default '1',
  `pt_Normal` varchar(3) NOT NULL default '1',
  `pt_Code` varchar(3) NOT NULL default '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sch_ReportInfo` (
  `ri_state` varchar(2) NOT NULL default '1',
  `ri_FromStationID` varchar(20) default NULL,
  `ri_FromStation` varchar(50) default NULL,
  `ri_info` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sch_NoticeInfo` (
  `ni_state` varchar(2) NOT NULL default '1',
  `ni_info` varchar(100) NOT NULL,
  `ni_id` int(11) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sch_SpeechNoOfRunsAttemp` (
  `sa_StopStationTime` varchar(50) default NULL,
  `sa_EndStation` varchar(50) default NULL,
  `sa_NoOfRunsID` varchar(20) default NULL,
  `sa_Check` varchar(20) default NULL,
  `sa_BusNumber` varchar(20) default NULL,
  `sa_PreviousTime` varchar(5) default NULL,
  `sa_CheckState` varchar(20) NOT NULL,
  `sa_Beginstation` varchar(20) default NULL,
  `sa_NoOfRunsdate` date default NULL,
  `sa_FromStationID` varchar(20) default NULL,
  `sa_FromStation` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_acct_SellPay` (   
	`sp_SellUserID` varchar(20)  NOT NULL ,      
	`sp_SellUser` varchar(30)  NULL ,             
	`sp_Station` varchar(50)  NULL ,                  
 	`sp_SellDate` char(10) NOT NULL ,       
	`sp_RemainMoney` decimal(12,1) NULL ,        
	`sp_BeginTicket` varchar(20)  NULL ,         
	`sp_EndTicket` varchar(20)  NULL ,            
	`sp_SellMoney` decimal(12,1) NULL ,           
	`sp_SellCount` int NULL ,                    
	`sp_ErrMoney` decimal(12,1) NULL ,          
	`sp_ErrCount` int NULL ,                    
	`sp_ReturnMoney` decimal(12,1) NULL ,        
	`sp_ReturnCount` int NULL ,                  
	`sp_ReturnRate` decimal(12,2) NULL ,          
	`sp_SafetyMoney` decimal(12,1) NULL ,        
	`sp_SafetyCount` int NULL ,                  
	`sp_UpCount` int NULL ,                  
	`sp_UpMoney` decimal(12,1) NULL ,          
	`sp_PayMoney` decimal(12,1) NULL ,          
	`sp_UserID` varchar (20)  NULL ,             
	`sp_User` varchar (30)  NULL ,               
	`sp_Pc` varchar (50)  NULL ,                  
 	`sp_Date` date NULL ,                
	`sp_Remark` varchar (200)  NULL ,             
	PRIMARY KEY (`sp_SellUserID`,`sp_SellDate`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_acct_TemPay` ( 
	`tp_SellData` char(10)  NOT NULL ,                     
	`tp_SellUserID` varchar(20)  NOT NULL ,                
	`tp_SellUser` varchar(30)  NULL ,                       
	`tp_Station` varchar(50)  NULL ,                        
	`tp_RemainMoney` decimal(12,1) NULL ,                
	`tp_BeginTicket` varchar(20)  NULL ,                  
	`tp_EndTicket` varchar(20)  NULL ,                   
	`tp_SellMoney` decimal(12,1) NULL ,                   
	`tp_SellCount` int NULL ,                             
	`tp_ErrMoney` decimal(12,1) NULL ,                    
	`tp_ErrCount` int NULL ,                              
	`tp_ReturnMoney` decimal(12,1) NULL ,                 
	`tp_ReturnCount` decimal(12,1) NULL ,                  
	`tp_ReturnRate` decimal(12,2) NULL ,                   
	`tp_SafetyMoney` decimal(12,1) NULL ,                 
	`tp_SafetyCount` int NULL ,                           
	`tp_UpCount` int NULL ,                             
	`tp_UpMoney` decimal(12,1) NULL ,                   
	`tp_OnLine` varchar(50)  NULL ,
	`tp_UserID` varchar(20)  NOT NULL ,                 
	`tp_User` varchar(30)  NULL                        
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_acct_BusRate` (   
	`br_BusID` varchar(20)  NOT NULL ,           
	`br_BusNumber` varchar(20)  NULL ,           
	`br_BusType` varchar(50)  NULL ,             
	`br_BusUnit` varchar(50)  NULL ,              
	`br_InStationID` varchar(20)  NOT NULL ,      
	`br_InStation` varchar(50)  NULL ,
	`br_LineName`  varchar(50)  NULL ,             
	`br_Rate1` decimal(12,2) NULL ,                       
	`br_Rate2` decimal(12,2) NULL ,
	`br_Rate3` decimal(12,2) NULL ,
	`br_Rate4` decimal(12,2) NULL ,
	`br_Rate5` decimal(12,2) NULL ,
	`br_Rate6` decimal(12,2) NULL ,
	`br_Rate7` decimal(12,2) NULL ,
	`br_Rate8` decimal(12,2) NULL ,
	`br_Rate9` decimal(12,2) NULL ,
	`br_Rate10` decimal(12,2) NULL ,
	`br_Rate11` decimal(12,2) NULL ,
	`br_Rate12` decimal(12,2) NULL ,
	`br_Rate13` decimal(12,2) NULL ,
	`br_Rate14` decimal(12,2) NULL ,
	`br_Rate15` decimal(12,2) NULL ,
	`br_BeginDate` char(10) NULL ,
	`br_EndDate` char(10) NULL ,
	`br_AdderID` varchar(20) NULL ,           
	`br_Adder` varchar(30)  NULL ,                
        `br_AddTime` datetime NULL ,             
	`br_ModerID` varchar(20)  NULL ,                 
	`br_Moder` varchar(30)  NULL ,
	`br_ModTime` datetime NULL , 
	PRIMARY KEY (`br_BusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_acct_BusAccount` ( 
	`ba_AccountID` varchar(50)  NOT NULL ,          
	`ba_BusID` varchar(20)  NULL ,                     
	`ba_BusNumber` varchar(20)  NULL ,              
	`ba_BusType` varchar(50)  NULL ,                 
	`ba_BusUnit` varchar(50)  NULL ,                 
	`ba_InStationID` varchar(20)  NULL ,              
	`ba_InStation` varchar(50)  NULL ,                
	`ba_BalanceCount` int NULL ,                    
	`ba_CheckTotal` int NULL ,                      
	`ba_Income` decimal(12,1) NULL ,               
	`ba_Paid` decimal(12,1) NULL ,                   
	`ba_ServiceFee` decimal(12,2) NULL ,             
	`ba_OtherFee1` decimal(12,2) NULL ,          
	`ba_OtherFee2` decimal(12,2) NULL ,          
	`ba_OtherFee3` decimal(12,2) NULL ,          
	`ba_OtherFee4` decimal(12,2) NULL ,          
	`ba_OtherFee5` decimal(12,2) NULL ,          
	`ba_OtherFee6` decimal(12,2) NULL ,          
	`ba_Money1` decimal(12,1) NULL ,           
	`ba_Money2` decimal(12,1) NULL ,
	`ba_Money3` decimal(12,1) NULL ,
	`ba_Money4` decimal(12,1) NULL ,
	`ba_Money5` decimal(12,1) NULL ,
	`ba_Money6` decimal(12,1) NULL ,
	`ba_Money7` decimal(12,1) NULL ,
	`ba_Money8` decimal(12,1) NULL ,
	`ba_Money9` decimal(12,1) NULL ,
	`ba_Money10` decimal(12,1) NULL ,
	`ba_Money11` decimal(12,1) NULL ,
	`ba_Money12` decimal(12,1) NULL ,
	`ba_Money13` decimal(12,1) NULL ,
	`ba_Money14` decimal(12,1) NULL ,
	`ba_Money15` decimal(12,1) NULL ,
	`ba_Rate1` decimal(12,2) NULL ,                    
	`ba_Rate2` decimal(12,2) NULL ,
	`ba_Rate3` decimal(12,2) NULL ,
	`ba_Rate4` decimal(12,2) NULL ,
	`ba_Rate5` decimal(12,2) NULL ,
	`ba_Rate6` decimal(12,2) NULL ,
	`ba_Rate7` decimal(12,2) NULL ,
	`ba_Rate8` decimal(12,2) NULL ,
	`ba_Rate9` decimal(12,2) NULL ,
	`ba_Rate10` decimal(12,2) NULL ,
	`ba_Rate11` decimal(12,2) NULL ,
	`ba_Rate12` decimal(12,2) NULL ,
	`ba_Rate13` decimal(12,2) NULL ,
	`ba_Rate14` decimal(12,2) NULL ,
	`ba_Rate15` decimal(12,2) NULL ,
	`ba_DateTime` datetime NULL ,                  
	`ba_UserID` varchar(20)  NULL ,                
	`ba_User` varchar(30)  NULL ,                 
	`ba_Remark` varchar(200)  NULL , 
	`ba_FeeTypeName1` varchar(20)  NULL , 
	`ba_FeeTypeName2` varchar(20)  NULL ,
	`ba_FeeTypeName3` varchar(20)  NULL ,
	`ba_FeeTypeName4` varchar(20)  NULL ,
	`ba_FeeTypeName5` varchar(20)  NULL ,   
	`ba_FeeTypeName6` varchar(20)  NULL , 
	`ba_FeeTypeName7` varchar(20)  NULL ,
	`ba_FeeTypeName8` varchar(20)  NULL ,
	`ba_FeeTypeName9` varchar(20)  NULL ,
	`ba_FeeTypeName10` varchar(20)  NULL ,  
	`ba_FeeTypeName11` varchar(20)  NULL , 
	`ba_FeeTypeName12` varchar(20)  NULL ,
	`ba_FeeTypeName13` varchar(20)  NULL ,
	`ba_FeeTypeName14` varchar(20)  NULL ,
	`ba_FeeTypeName15` varchar(20)  NULL ,
	PRIMARY KEY (`ba_AccountID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `tms_acct_BusAccountTemp` (
	`bat_AccountID` varchar(50)  NOT NULL ,            
	`bat_BusID` varchar(20)  NULL ,                    
	`bat_BusNumber` varchar(20)  NULL ,               
	`bat_BusType` varchar(50)  NULL ,                  
	`bat_BusUnit` varchar(50)  NULL ,                 
	`bat_BalanceCount` int NULL ,                      
	`bat_CheckTotal` int NULL ,                        
	`bat_Income` decimal(12,1) NULL ,                  
	`bat_Paid` decimal(12,1) NULL ,                    
	`bat_ServiceFee` decimal(12,2) NULL ,              
	`bat_OtherFee1` decimal(12,2) NULL ,
	`bat_OtherFee2` decimal(12,2) NULL ,
	`bat_OtherFee3` decimal(12,2) NULL ,
	`bat_OtherFee4` decimal(12,2) NULL ,
	`bat_OtherFee5` decimal(12,2) NULL ,
	`bat_OtherFee6` decimal(12,2) NULL ,
	`bat_Money1` decimal(12,1) NULL ,
	`bat_Money2` decimal(12,1) NULL ,
	`bat_Money3` decimal(12,1) NULL ,
	`bat_Money4` decimal(12,1) NULL ,
	`bat_Money5` decimal(12,1) NULL ,
	`bat_Money6` decimal(12,1) NULL ,
	`bat_Money7` decimal(12,1) NULL ,
	`bat_Money8` decimal(12,1) NULL ,
	`bat_Money9` decimal(12,1) NULL ,
	`bat_Money10` decimal(12,1) NULL ,
	`bat_Money11` decimal(12,1) NULL ,
	`bat_Money12` decimal(12,1) NULL ,
	`bat_Money13` decimal(12,1) NULL ,
	`bat_Money14` decimal(12,1) NULL ,
	`bat_Money15` decimal(12,1) NULL ,
	`bat_Rate1` decimal(12,2) NULL ,
	`bat_Rate2` decimal(12,2) NULL ,
	`bat_Rate3` decimal(12,2) NULL ,
	`bat_Rate4` decimal(12,2) NULL ,
	`bat_Rate5` decimal(12,2) NULL ,
	`bat_Rate6` decimal(12,2) NULL ,
	`bat_Rate7` decimal(12,2) NULL ,
	`bat_Rate8` decimal(12,2) NULL ,
	`bat_Rate9` decimal(12,2) NULL ,
	`bat_Rate10` decimal(12,2) NULL ,
	`bat_Rate11` decimal(12,2) NULL ,
	`bat_Rate12` decimal(12,2) NULL ,
	`bat_Rate13` decimal(12,2) NULL ,
	`bat_Rate14` decimal(12,2) NULL ,
	`bat_Rate15` decimal(12,2) NULL ,
	`bat_UserID` varchar(20) NULL ,                    
	`bat_User` varchar(30)  NULL ,                      
	`bat_Remark` varchar(200)  NULL,                 
	PRIMARY KEY (`bat_AccountID`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_acct_BalanceInHand` ( 
	`bh_BalanceNO` varchar(50)  NULL ,      
	`bh_BusID` varchar(20)  NULL ,          
	`bh_BusNumber` varchar(20)  NULL ,      
	`bh_BusUnit` varchar(50)  ,               
	`bh_BusModelID` varchar(20)  NULL ,    
	`bh_BusModel` varchar(50)  NULL ,       
	`bh_NoOfRunsID` varchar(20)  NULL ,     
	`bh_LineID` varchar(30)  NULL ,         
	`bh_NoOfRunsdate` char(10)  NULL ,      
	`bh_BeginStationTime` char(5)  NULL ,   
	`bh_StopStationTime` char(5)  NULL ,    
	`bh_BeginStationID` varchar(20)  NULL , 
	`bh_BeginStation` varchar(50)  NULL ,   
	`bh_FromStationID` varchar(20)  NULL ,  
	`bh_FromStation` varchar(50)  ,         
	`bh_EndStationID` varchar(20)  NULL ,   
	`bh_EndStation` varchar(50)  NULL ,     
	`bh_ServiceFee` decimal(12,2) NULL ,    
	`bh_otherFee1` decimal(12,2) NULL ,     
	`bh_otherFee2` decimal(12,2) NULL ,     
	`bh_otherFee3` decimal(12,2) NULL ,     
	`bh_otherFee4` decimal(12,2) NULL ,     
	`bh_otherFee5` decimal(12,2) NULL ,     
	`bh_otherFee6` decimal(12,2) NULL ,     
	`bh_CheckTotal` smallint NULL ,         
	`bh_TicketTotal` smallint NULL ,        
	`bh_PriceTotal` decimal(12,1) NULL , 
	`bh_BalanceMoney` decimal(12,2) NULL , 
	`bh_ConsignMoney` decimal(12,2) NULL ,    
	`bh_SupTicketRen` int NULL ,            
	`bh_SupTicketMoney` decimal(12,2) NULL , 
	`bh_StationID` varchar(20)  NULL ,       
	`bh_Station` varchar(50)  NULL ,         
	`bh_UserID` varchar(20)  NULL ,          
	`bh_User` varchar(50)  NULL ,            
	`bh_Date` char(10)  NULL ,               
	`bh_Time` char(5)  NULL ,                
	`bh_State` varchar(50)  NULL ,             
	`bh_Type` varchar(50)  NULL ,            
	`bh_AccountID` varchar(50)  NULL ,      
	`bh_IsAccount` tinyint NOT NULL ,           
	PRIMARY KEY (`bh_BalanceNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_acct_BalanceInHandTemp` (
	`bht_BalanceNO` varchar(50)  NOT NULL ,       
	`bht_BusID` varchar(20)  NULL ,               
	`bht_BusNumber` varchar(20)  NULL ,            
	`bht_BusUnit` varchar(50)  NULL ,              
	`bht_BusModelID` varchar(20)  NULL ,          
	`bht_BusModel` varchar(50)  NULL ,            
	`bht_NoOfRunsID` varchar(20)  NULL ,          
	`bht_LineID` varchar(30)  NULL ,              
	`bht_NoOfRunsdate` char(10)  NULL ,
	`bht_ReportDateTime` datetime NULL,            
	`bht_BeginStationTime` char(5) NULL ,         
	`bht_StopStationTime` char(5)  NULL ,         
	`bht_BeginStationID` varchar(20)  NULL ,      
	`bht_BeginStation` varchar(50) NULL ,         
	`bht_FromStationID` varchar(20)  NULL ,         
	`bht_FromStation` varchar(50)  NULL ,         
	`bht_EndStationID` varchar(20)  NULL ,        
	`bht_EndStation` varchar(50)  NULL ,          
	`bht_ServiceFee` decimal(12,2) NULL ,         
	`bht_otherFee1` decimal(12,2) NULL ,          
	`bht_otherFee2` decimal(12,2) NULL ,          
	`bht_otherFee3` decimal(12,2) NULL ,          
	`bht_otherFee4` decimal(12,2) NULL ,          
	`bht_otherFee5` decimal(12,2) NULL ,          
	`bht_otherFee6` decimal(12,2) NULL ,          
	`bht_CheckTotal` smallint NULL ,              
	`bht_TicketTotal` smallint NULL ,              
	`bht_PriceTotal` decimal(12,2) NULL ,
	`bht_BalanceMoney` decimal(12,2) NULL , 
	`bht_ConsignMoney` decimal(12,2) NULL ,           
	`bht_SupTicketRen` int NULL ,                
	`bht_StationID` varchar(20)  NULL ,           
	`bht_Station` varchar(50)  NULL ,             
	`bht_UserID` varchar(20)  NULL ,             
	`bht_User` varchar(50)  NULL ,               
	`bht_Date` char(10)  NULL ,                  
	`bht_Time` char(5)  NULL ,                  
	`bht_State` varchar(50)  NULL ,              
	`bht_Type` varchar(50)  NULL ,              
	`bht_AccountID` varchar(50)  NULL ,         
	`bht_UserIDTemp` varchar(50)  NULL ,       
	`bht_UserTemp` varchar(50)  NULL ,
	`bht_AddDateTime` datetime NULL ,
	PRIMARY KEY (`bht_BalanceNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 

CREATE TABLE IF NOT EXISTS `tms_acct_BalanceList` ( 
	`bl_BalanceNO` varchar(50)  NULL ,              
	`bl_ReachStationID` varchar(20) NULL  ,         
	`bl_ReachStation` varchar(50)  NULL ,           
	`bl_Distance` decimal(12,2) NULL ,               
	`bl_SellPriceType` varchar(50)  NOT NULL ,      
	`bl_SellPrice` decimal(12,1) NOT NULL ,         
	`bl_PriceTotal` decimal(12,1) NULL ,            
	`bl_CheckTotal` smallint NULL ,               
	`bl_TicketTotal` smallint NULL ,               
	`bl_ServiceFee` decimal(12,2) NULL ,           
	`bl_otherFee1` decimal(12,2) NULL ,            
	`bl_otherFee2` decimal(12,2) NULL ,            
	`bl_otherFee3` decimal(12,2) NULL ,            
	`bl_otherFee4` decimal(12,2) NULL ,            
	`bl_otherFee5` decimal(12,2) NULL ,             
	`bl_otherFee6` decimal(12,2) NULL ,              
	PRIMARY KEY (`bl_BalanceNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8; 

CREATE TABLE IF NOT EXISTS `tms_acct_BalanceListTemp` (
	`blt_ID` int auto_increment  NOT NULL ,        
	`blt_NoOfRunsID` varchar(20)  NULL ,           
	`blt_BusID` varchar(20)  NULL ,                
	`blt_BusNumber` varchar(20)  NULL ,           
	`blt_FromStationID` varchar(20)  NULL ,        
	`blt_FromStation` varchar(50)  NULL ,          
	`blt_ReachStationID` varchar(20)  NULL ,       
	`blt_ReachStation` varchar(50)  NULL ,         
	`blt_Distance` decimal(12,2) NULL ,             
	`blt_SellPriceType` varchar(50)  NULL ,        
	`blt_SellPrice` decimal(12,1) NULL ,           
	`blt_PriceTotal` decimal(12,1) NULL ,          
	`blt_CheckTotal` smallint NULL ,              
	`blt_ServiceFee` decimal(12,2) NULL ,         
	`blt_otherFee1` decimal(12,2) NULL ,          
	`blt_otherFee2` decimal(12,2) NULL ,          
	`blt_otherFee3` decimal(12,2) NULL ,          
	`blt_otherFee4` decimal(12,2) NULL ,          
	`blt_otherFee5` decimal(12,2) NULL ,          
	`blt_otherFee6` decimal(12,2) NULL ,          
	`blt_UserID` varchar(20)  NULL ,              
	`blt_User` varchar(30)  NULL ,                
	PRIMARY KEY (`blt_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_acct_StationBalance` (
	`sb_ID` int auto_increment NOT NULL ,
	`sb_FStationID` varchar(20)  NULL ,            
	`sb_FStation` varchar(50)  NULL , 
	`sb_FTicketNum` int  NULL , 
	`sb_FTicketMoney` decimal(12,2)  NULL ,
	`sb_FLuggageNum` int  NULL ,
	`sb_FLuggageMoney` decimal(12,2)  NULL ,
	`sb_SStationID` varchar(20)  NULL ,            
	`sb_SStation` varchar(50)  NULL ,
	`sb_STicketNum` int  NULL , 
	`sb_STicketMoney` decimal(12,2)  NULL ,
	`sb_SLuggageNum` int  NULL ,
	`sb_SLuggageMoney` decimal(12,2)  NULL ,
	`sb_BeginDate`char(10)  NULL , 
	`sb_EndDate`char(10)  NULL ,
	`sb_Money` decimal(12,2)  NULL ,
	`sb_BalanceID` varchar(20)  NULL , 
	`sb_Balancer` varchar(30)  NULL , 
	`sb_BalanceDate` char(10)  NULL ,
	`sb_BalanceTime` char(5)  NULL ,  
	PRIMARY KEY (`sb_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_lug_LuggageCons` (      
	`lc_ID` int auto_increment  NOT NULL ,
	`lc_TicketNumber` varchar(20)  NULL ,                
	`lc_DestinationID` varchar(20)  NULL ,                
	`lc_Destination` varchar(50)  NULL ,                   
	`lc_NoOfRunsID` varchar(20)  NULL ,                 
	`lc_BusID` varchar(20)  NULL ,                       
	`lc_BusNumber` varchar(20)  NULL ,                  
	`lc_DeliveryDate` char(10)  NULL ,                    
	`lc_DeliveryUserID` varchar(20)  NULL ,               
	`lc_DeliveryUser` varchar(30)  NULL ,                 
	`lc_AcceptDateTime` datetime NULL ,                  
	`lc_ConsignName` varchar(30)  NULL ,                
	`lc_ConsignTel` varchar(20)  NULL ,
	`lc_ConsignPaperID` varchar(20)  NULL ,                 
	`lc_ConsignAdd` varchar(50)  NULL ,                 
	`lc_UnloadName` varchar(30)  NULL ,                
	`lc_UnloadTel` varchar(20)  NULL , 
	`lc_UnloadPaperID` varchar(20)  NULL ,                
	`lc_UnloadAdd` varchar(50)  NULL ,                               
	`lc_CargoName` varchar(50)  NULL ,
        `lc_Numbers` smallint NULL ,  
	`lc_Weight` decimal(12,2) NULL ,  
	`lc_CargoDescription` varchar(50)  NULL ,            
	`lc_ConsignMoney` decimal(12,1) NULL ,
	`lc_PackingMoney` decimal(12,1) NULL ,
	`lc_LabelMoney` decimal(12,1) NULL ,
	`lc_HandlingMoney` decimal(12,1) NULL ,         
	`lc_Remark` varchar(300)  NULL ,                  
	`lc_StationID` varchar(20)  NULL ,                 
	`lc_Station` varchar(50) NULL ,                     
	`lc_Status` varchar(20) NULL ,                     
	`lc_ExtractionTime` datetime NULL ,                
	`lc_ExtractionUserID` varchar(20)  NULL ,
	`lc_ExtractionUser`  varchar(30)  NULL ,        
	`lc_Isvalueinsure` tinyint NULL ,
        `lc_InsureMoney` decimal(12,1) NULL ,
	`lc_InsureFee` decimal(12,1) NULL ,
	`lc_PayStyle` varchar(50) NULL ,
	`lc_Allmoney` decimal(12,1) NULL ,
	`lc_StationBalance` tinyint NULL DEFAULT 0,
	`lc_IsBalance` tinyint NULL ,
	`lc_BalanceDateTime` datetime NULL ,
	PRIMARY KEY (`lc_ID`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_lug_LuggagePayMoney` (      
	`lpm_ID` int auto_increment  NOT NULL ,
	`lpm_DeliveryUserID` varchar(20)  NULL ,                
	`lpm_DeliveryUser` varchar(30)  NULL ,                   
	`lpm_DeliveryDate` char(10)  NULL ,                 
	`lpm_DeliveryMoney` decimal(12,1)  NULL ,                       
	`lpm_DeliveryNumber` int NULL ,                  
	`lpm_ExtractionMoney` decimal(12,1)  NULL ,                    
	`lpm_ExtractionNumber` int NULL ,               
	`lpm_LuggageConsMoney` decimal(12,1) NULL ,                 
	`lpm_UserID` varchar(20)  NULL ,                  
	`lpm_User` varchar(30)  NULL ,                
	`lpm_SubDateTime` datetime  NULL ,                  
	`lpm_Remark` varchar(200)  NULL ,                 
	`lpm_lugconsigntation` varchar(50)  NULL ,                
	PRIMARY KEY (`lpm_ID`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_lug_CloakRoom` (    
	`cr_ID` int auto_increment  NOT NULL ,            
	`cr_CustodyID` varchar(20)  NULL ,                
	`cr_PasserName` varchar(50)  NULL ,               
	`cr_PasserTel` varchar(20)  NULL ,                
	`cr_BaggageType` varchar(50)  NULL ,       
	`cr_BaggageNo` varchar(20)  NULL ,               
	`cr_KeepMoney` decimal(12,1) NULL ,              
	`cr_KeepUserID` varchar(20)  NULL ,              
	`cr_KeepUser` varchar(30)  NULL ,                
	`cr_DepositTime` datetime NULL ,                  
	`cr_ExtractionTime` datetime NULL ,                
	`cr_ExtractionUserID` varchar(20)  NULL ,          
	`cr_ExtractionUser` varchar(50)  NULL ,            
	`cr_Type` varchar(50)  NULL ,                   
	`cr_Remark` varchar(300)  NULL ,
	`cr_StationID` varchar(20)  NULL ,                 
	`cr_Station` varchar(50) NULL ,                     
	PRIMARY KEY (`cr_ID`)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sf_CheckItem` (
	`ci_CheckItem` varchar(30) NOT NULL ,  
	`ci_CheckContent` varchar(100) NOT NULL ,       
	`ci_AdderID` varchar(20) NULL ,           
	`ci_Adder` varchar(30)  NULL ,                
        `ci_Addertime` datetime NULL ,             
	`ci_ModerID` varchar(20)  NULL ,                 
	`ci_Moder` varchar(30)  NULL ,
	`ci_Modertime` datetime NULL ,   
	`ci_Remark` varchar(50)  NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sf_SafetyCheck` (             
	`sc_BusID` varchar(30)  NOT NULL ,                  
	`sc_BusCard` varchar(30)  NOT NULL ,                 
	`sc_BusType` varchar(30)  NULL ,                 
	`sc_StationID` varchar(30)  NOT NULL ,          
	`sc_StationName` varchar(50)  NOT NULL ,            
	`sc_InspectorName` varchar(20)  NULL ,              
	`sc_UserID` varchar(30)  NOT NULL ,                
	`sc_UserName` varchar(20)  NOT NULL ,                  
	`sc_Result` varchar(20)  NOT NULL ,                               
	`sc_CheckDate` date NOT NULL ,                   
	`sc_CheckExpiredDate` date NULL ,                
	`sc_Item1` varchar(300)  NULL ,                 
	`sc_Item2` varchar(300) NULL ,
	`sc_Item3` varchar(300) NULL ,
	`sc_Item4` varchar(300) NULL ,
	`sc_Item5` varchar(300) NULL ,
	`sc_Item6` varchar(300) NULL ,
	`sc_Item7` varchar(300) NULL ,
	`sc_Item8` varchar(300) NULL ,
	`sc_Item9` varchar(300) NULL ,
	`sc_Item10` varchar(300) NULL ,
	`sc_IsNoOfRunsID` tinyint(1) NULL,
	PRIMARY KEY (`sc_BusID`,`sc_CheckDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sf_OutCheck` (   
	`oc_ID` int auto_increment NOT NULL ,           
	`oc_BusID` varchar(20)  NULL ,                 
	`oc_BusCard` varchar(20)  NULL ,               
	`oc_OutCheck_StationID` varchar(20)  NULL ,     
	`oc_OutCheck_Station` varchar(50)  NULL ,        
	`oc_OutCheck_User` varchar(50)  NULL ,          
	`oc_PcUserID` varchar(20)  NULL ,              
	`oc_PcUser` varchar(30)  NULL ,                
	`oc_Result` varchar(50) NULL ,                  
	`oc_CheckDate` datetime NULL ,                
	`oc_Item1` varchar(50)  NULL ,                
	`oc_Item2` varchar(50)  NULL ,
	`oc_Item3` varchar(50)  NULL ,
	`oc_Item4` varchar(50)  NULL ,
	`oc_Item5` varchar(50)  NULL ,
	`oc_Item6` varchar(50)  NULL ,
	`oc_Item7` varchar(50)  NULL ,
	`oc_Item8` varchar(50)  NULL ,
	`oc_Item9` varchar(50)  NULL ,
	`oc_Item10` varchar(50)  NULL ,
	`oc_NoOfRunsID` varchar(50)  NULL ,          
	`oc_RenNo` varchar(20)  NULL ,               
	`oc_FreeSeats` varchar(20)  NULL ,            
    	`oc_Remark` varchar(500)  NULL ,            
	PRIMARY KEY (`oc_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sys_UsType` (             
	`ut_UserType` varchar(20) NOT NULL ,             
	`ut_UserPerm` varchar(300) NULL ,
	`ut_InStation` varchar(50)  NULL ,            
	`ut_Remark` varchar(50)  NULL               
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sys_UsInfor` (  
	`ui_UserID` varchar(20)  NOT NULL ,         
	`ui_UserPassword` varchar(50)  NOT NULL ,         
	`ui_UserName` varchar(30)  NOT NULL ,            
	`ui_UserGroupID` varchar(50)  NOT NULL ,             
	`ui_UserGroup` varchar(200)  NOT NULL ,             
	`ui_UserSationID` varchar(20)  NOT NULL ,         
	`ui_UserSation` varchar(50)  NOT NULL ,         
	`ui_Remark` varchar(200)  NULL ,           
	`ui_opUserID` varchar(50)  NOT NULL ,
	PRIMARY KEY (`ui_UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sys_OnlineUser` (  
	`ui_UserID` varchar(20)  NOT NULL ,
	`ui_UserName` varchar(30)  NOT NULL ,
	`ui_UserGroupID` varchar(20)  NOT NULL ,
	`ui_UserGroup` varchar(20)  NOT NULL ,
	`ui_UserSationID` varchar(20)  NOT NULL ,
	`ui_UserSation` varchar(50)  NOT NULL ,
	`ui_UserState` varchar(20)  NULL ,
	`ui_LoginTime` varchar(50) NULL , 
	`ui_LogoutTime` varchar(50) NULL ,
	`ui_UserIP` varchar(50) NULL ,
	PRIMARY KEY (`ui_UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `tms_sys_OnLine` (   
	`ol_UserID` varchar(20)  NOT NULL ,          
	`ol_User` varchar(50)  NULL ,                
	`ol_IF` varchar(50)  NULL ,                  
	`ol_Station` varchar(50)  NULL ,             
	`ol_UserType` varchar(50)  NULL ,           
	`ol_PcName` varchar(20)  NULL ,            
	PRIMARY KEY (`ol_UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sys_WordLog` ( 
	`wl_DateTime` varchar(20)  NULL ,      
	`wl_UserID` varchar(20)  NULL ,        
	`wl_User` varchar(20)  NULL ,          
	`wl_Windows` varchar(50)  NULL ,      
	`wl_PcName` varchar(50)  NULL ,       
	`wl_WordViscera` varchar(300)  NULL    
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_sys_WordBook` (  
	`wb_ID` int auto_increment NOT NULL ,   
	`wb_Type` varchar(200)  NULL ,         
	`wb_Intro` varchar(500)  NULL ,        
	PRIMARY KEY (`wb_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_CharteredBus` (
	`cb_ChartereID` varchar(20) NOT NULL ,       
	`cb_TicketID` varchar(20) NULL ,           
	`cb_Customer` varchar(50)  NOT NULL ,                
        `cb_BusID` varchar(20) NULL ,             
	`cb_BusNumber` varchar(20)  NULL ,                 
	`cb_DriverID` varchar(30)  NULL , 
        `cb_DriverName` varchar(30)  NULL , 
 	`cb_CharteredBusDate` char(10)  NULL ,
      	`cb_CharteredBusDays` int NULL ,
	`cb_FromReach` varchar(50) NULL ,
	`cb_Kilometers` decimal(12,1) NULL , 
	`cb_Seats` int NULL ,
	`cb_Peoples` int NULL ,
	`cb_CarriageFee` decimal(12,1) NULL , 
	`cb_StagnateFee` decimal(12,1) NULL ,
 	`cb_BillingDate` char(10)  NULL ,
	`cb_BillingStation` varchar(50)  NULL ,
	`cb_BillingerID` varchar(30)  NULL ,
	`cb_BillingerName` varchar(30)  NULL ,
	`cb_State` tinyint NULL ,
	`cb_Remark` varchar(50)  NULL ,
	`cb_IsBalance` tinyint NULL ,
	`cb_BalanceDateTime` datetime NULL ,                   
	PRIMARY KEY (`cb_ChartereID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_CharteredPayMoney` (
	`cpm_ID` int auto_increment NOT NULL ,  
	`cpm_BillingerID` varchar(30) NOT NULL ,        
	`cpm_BillingerName` varchar(30) NULL ,           
	`cpm_BillingDate` char(10)  NULL ,                
        `cpm_beginTicketID` varchar(20)  NULL,  
	`cpm_endTicketID` varchar(20)  NULL, 
	`cpm_Number` int NULL , 
	`cpm_PayMoney` decimal(12,1) NULL , 
	`cpm_BillingStation` varchar(50) NULL ,
	`cpm_UserID` varchar(30) NULL ,
	`cpm_User` varchar(30) NULL ,
	`cpm_SubDateTime` datetime NULL ,
	`cpm_PC`  varchar(50) NULL ,
	`cpm_Remark` varchar(200) NULL ,                   
	PRIMARY KEY (`cpm_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_bd_WebUserRegister` (
	`wur_ID` int auto_increment NOT NULL ,  
	`wur_UserRegisterName` varchar(30) NOT NULL ,       
	`wur_Password` varchar(50) NOT NULL ,           
	`wur_UserName` varchar(30)  NOT NULL ,                
        `wur_CertificateType` varchar(50) NULL ,             
	`wur_CertificateNumber` varchar(30)  NULL ,                 
	`wur_Emaile` varchar(50)  NULL ,  
	`wur_Phone` varchar(30)  NULL ,                    
	PRIMARY KEY (`wur_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_websell_WebSellTicket` (
	`wst_WebSellID` varchar(30) NOT NULL , 
	`wst_UserName` varchar(30)  NOT NULL , 
	`wst_CertificateType` varchar(50) NULL ,             
	`wst_CertificateNumber` varchar(30)  NULL ,  
	`wst_NoOfRunsID` varchar(20)  NULL ,
	`wst_LineID` varchar(30)  NULL ,                                        
	`wst_NoOfRunsdate` char(10)  NULL ,                   
	`wst_BeginStationTime` char(5)  NULL ,                 
	`wst_StopStationTime` char(5)  NULL ,                  
	`wst_Distance` decimal(12,2) NULL ,                     
	`wst_BeginStationID` varchar(20)  NULL ,               
	`wst_BeginStation` varchar(50)  NULL ,                 
	`wst_FromStationID` varchar(20)  NULL ,              
	`wst_FromStation` varchar(50)  NULL ,                 
	`wst_ReachStationID` varchar(20)  NULL ,              
	`wst_ReachStation` varchar(50)  NULL ,                 
	`wst_EndStationID` varchar(20)  NULL ,                
	`wst_EndStation` varchar(50)  NULL ,                   
	`wst_SellPrice` decimal(12,1) NULL ,
	`wst_FullNumber` smallint NULL,
	`wst_HalfNumber` smallint NULL, 
	`wst_TotalMan` smallint NULL ,                 
	`wst_SellPriceType` varchar(50)  NULL ,                 
	`wst_ColleSellPriceType` varchar(2000)  NULL ,                                
	`wst_FullPrice` decimal(12,1) NULL ,                   
	`wst_HalfPrice` decimal(12,1) NULL ,                   
	`wst_StandardPrice` decimal(12,1) NULL , 
	`wst_BalancePrice` decimal(12,1) NULL ,             
	`wst_ServiceFee` decimal(12,2) NULL ,                 
	`wst_otherFee1` decimal(12,2) NULL ,
	`wst_otherFee2` decimal(12,2) NULL ,
	`wst_otherFee3` decimal(12,2) NULL ,
	`wst_otherFee4` decimal(12,2) NULL ,
	`wst_otherFee5` decimal(12,2) NULL ,
	`wst_otherFee6` decimal(12,2) NULL ,                
	`wst_SellDate` char(10)  NULL ,                   
	`wst_SellTime` char(8)  NULL ,                   
	`wst_BusModelID` varchar(50)  NULL ,            
	`wst_BusModel` varchar(50)  NULL ,              
	`wst_SeatID` varchar(200)  NULL ,                                                
	`wst_TicketState` smallint NULL ,                                       
	`wst_PayTradeNo` varchar(64) NULL ,
	`wst_ReserveID` varchar(20)  NULL ,                        
	`wst_ReserveName` varchar(30)  NULL ,
	`wst_StationID` varchar(20)  NULL ,               
	`wst_Station` varchar(50)  NULL ,                 
	PRIMARY KEY (`wst_WebSellID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tms_led_LedSynInfo` (
  `lsi_ID` int(11) NOT NULL auto_increment,
  `lsi_LineName` varchar(50) default NULL,
  `lsi_NoOfRunsID` varchar(20) default NULL,
  `lsi_DepartureTime` char(5) default NULL,
  `lsi_CheckTicketWindow` varchar(20) default NULL,
  `lsi_BusModel` varchar(50) default NULL,
  `lsi_StandardPrice` decimal(12,1) default NULL,
  `lsi_FullPrice` decimal(12,1) default NULL,
  `lsi_TotalSeats` int(11) default NULL,
  `lsi_LeaveSeats` int(11) default NULL,
  `lsi_BusUnit` varchar(100) default NULL,
  `lsi_SiteName` varchar(200) default NULL,
  `lsi_Status` varchar(40) default NULL,
  `lsi_NoOfRunsdate` char(10) default NULL,
  `lsi_BusCard` varchar(50) default NULL,
  `lsi_Beginstation` varchar(50) default NULL,
  `lsi_Endstation` varchar(50) default NULL,
  `lsi_Remark` varchar(500) default NULL,
  PRIMARY KEY  (`lsi_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

--------------------------------------

CREATE PROCEDURE tms_bd_creatticket(NoOfRunsID varchar(20), NoOfRunsdate char(10), userBY varchar(50) CHARACTER SET utf8, OUT intRetVal int)
BEGIN
declare ttml_NoOfRunsID varchar(20);	
declare ttml_LineID varchar(30);
declare ttml_NoOfRunsdate char(10);	
declare ttml_NoOfRunstime char(5);	
declare ttml_BeginstationID varchar(20);	
declare ttml_Beginstation varchar(50) CHARACTER SET utf8;	
declare ttml_EndstationID varchar(20);	
declare ttml_Endstation varchar(50) CHARACTER SET utf8;	
declare ttml_CheckTicketWindow int;	
declare ttml_Loads int;
declare ttml_SeatStatus varchar(100);	
declare ttml_TotalSeats int;	
declare ttml_LeaveSeats int;
declare ttml_LeaveHalfSeats int;
declare ttml_Seats int;	
declare ttml_AddSeats int;	
declare ttml_FullSeats int;	
declare ttml_HalfSeats int;	
declare ttml_ReserveSeats int;	
declare ttml_StopRun tinyint;	
declare ttml_Allticket tinyint;
declare ttml_AllowSell tinyint;	
declare ttml_Orderno tinyint;	
declare ttml_StationID varchar(20);	
declare ttml_Station varchar(50) CHARACTER SET utf8;	
declare ttml_Created datetime;	
declare ttml_Createdby varchar(30) CHARACTER SET utf8;	
declare ttml_Updated datetime;	
declare ttml_Updatedby varchar(30) CHARACTER SET utf8;	
declare ttml_BusModelID varchar(20);	
declare ttml_BusModel varchar(50) CHARACTER SET utf8;	
declare ttml_BusID varchar(20);	
declare ttml_BusCard varchar(20) CHARACTER SET utf8;	
declare ttml_FreeSeats int;	
declare ttml_LeaveFreeSeats int;
declare ttml_StationDeal tinyint;  	
--
declare ttml_Orderno1 int;
--
declare ttml_RunRegion varchar(50) CHARACTER SET utf8;	
declare ttml_DealCategory varchar(20) CHARACTER SET utf8;	
declare ttml_DealStyle varchar(20) CHARACTER SET utf8;

declare LoopDate char(10);
declare StartDay int;
declare RunDay int;
declare StopDay int;
declare IsStopCreat tinyint;  
declare rotatecount int;
declare DayCount int;
declare buscount int;
declare longcount int;
declare recount int;

Declare SString varchar(100);
Declare L int;
Declare Lsub varchar(10);


Declare FreeSeatsRate decimal(12,2);
Declare LeaveFreeSeatsRate decimal(12,2);

declare ppd_NoOfRunsID varchar(30);
declare ppd_LineID varchar(20);
declare ppd_NoOfRunsdate char(10);
declare ppd_BeginStationTime char(5);	
declare ppd_StopStationTime char(5);	
declare ppd_Distance decimal(12,2); 	
declare ppd_BeginStationID varchar(20);
declare ppd_BeginStation varchar(50) CHARACTER SET utf8;
declare ppd_FromStationID varchar(20);	
declare ppd_FromStation varchar(50) CHARACTER SET utf8;
declare ppd_ReachStationID varchar(20);	
declare ppd_ReachStation varchar(50) CHARACTER SET utf8;
declare ppd_EndStationID varchar(20);	
declare ppd_EndStation varchar(50) CHARACTER SET utf8;	
declare ppd_FullPrice decimal(12,2);	
declare ppd_HalfPrice decimal(12,2);	
declare ppd_StandardPrice decimal(12,2);
declare ppd_ServiceFee decimal(12,2);	
declare ppd_otherFee1 decimal(12,2);	
declare ppd_otherFee2 decimal(12,2);	
declare ppd_otherFee3 decimal(12,2);	
declare ppd_otherFee4 decimal(12,2);	
declare ppd_otherFee5 decimal(12,2);	
declare ppd_otherFee6 decimal(12,2);	
declare ppd_StationID varchar(20);
declare ppd_Station varchar(50) CHARACTER SET utf8;	
declare ppd_Created datetime;	
declare ppd_CreatedBY varchar(30) CHARACTER SET utf8;
declare ppd_Updated datetime;	
declare ppd_UpdatedBY varchar(30) CHARACTER SET utf8;
declare ppd_IsPass tinyint;
declare ppd_BalancePrice decimal(12,2);
declare ppd_CheckInSite	tinyint;	
declare ppd_IsFromSite tinyint;	
declare ppd_StintSell tinyint;	
declare ppd_StintTime char(5);	


declare nnds_ID tinyint;
declare nnds_SiteName varchar(50) CHARACTER SET utf8;
declare nnds_SiteID varchar(20);
declare nnds_IsDock tinyint;
declare nnds_GetOnSite tinyint;
declare nnds_CheckInSite tinyint;
declare nnds_DepartureTime char(5);
declare nnds_CheckTicketWindow tinyint;
declare nnds_IsServiceFee tinyint;
declare nnds_ServiceFee decimal(12,2);
declare nnds_otherFee1 decimal(12,2);
declare nnds_otherFee2 decimal(12,2);
declare nnds_otherFee3 decimal(12,2);
declare nnds_otherFee4 decimal(12,2);
declare nnds_otherFee5 decimal(12,2);
declare nnds_otherFee6 decimal(12,2);
declare nnds_StintSell int;
declare nnds_StintTime char(5);

declare tmp_nds_ID tinyint;
declare tmp_nds_SiteName varchar(50) CHARACTER SET utf8;
declare tmp_nds_SiteID varchar(20);
declare tmp_nds_IsDock  tinyint;
declare tmp_nds_GetOnSite  tinyint;
declare tmp_nds_CheckInSite  tinyint;
declare tmp_nds_DepartureTime char(5);
declare tmp_nds_CheckTicketWindow tinyint;
declare tmp_nds_IsServiceFee tinyint;
declare tmp_nds_ServiceFee decimal(12,2);
declare tmp_nds_otherFee1 decimal(12,2);
declare tmp_nds_otherFee2 decimal(12,2);
declare tmp_nds_otherFee3 decimal(12,2);
declare tmp_nds_otherFee4 decimal(12,2);
declare tmp_nds_otherFee5 decimal(12,2);
declare tmp_nds_otherFee6 decimal(12,2);
declare tmp_nds_StintSell int;
declare tmp_nds_StintTime char(5);

Declare FromStationKilometer decimal(12,2);
Declare ToStationKilometer decimal(12,2);

declare ttpf_PriceProject varchar(20);
declare ttpf_BeginDate char(10);
declare ttpf_EndDate char(10);
declare ttpf_MoneyRenKil decimal(12,2);
declare TotalMoneyRenKil decimal(12,2);
Declare ttp_MoneyRenKil decimal(12,2);

declare nnrap_ISLineAdjust  tinyint;
declare nnrap_LineAdjust varchar(50);
declare nnrap_ISNoRunsAdjust tinyint;
declare nnrap_NoRunsAdjust varchar(30);
declare nnrap_DepartureSiteID varchar(20);
declare nnrap_DepartureSite varchar(50) CHARACTER SET utf8;
declare nnrap_GetToSiteID varchar(20);
declare nnrap_GetToSite varchar(50) CHARACTER SET utf8;
declare nnrap_ModelID varchar(20);
declare nnrap_ModelName varchar(50) CHARACTER SET utf8;
declare nnrap_BeginDate char(10);
declare nnrap_EndDate char(10);
declare nnrap_BeginTime char(5);
declare nnrap_EndTime char(5);
declare nnrap_ReferPrice decimal(12,2);
declare nnrap_PriceUpPercent decimal(12,2);
declare nnrap_RunPrice decimal(12,2);
declare nnrap_HalfPrice decimal(12,2);
declare nnrap_LinkAdjustPrice  tinyint;
declare nnrap_BalancePrice decimal(12,2);

declare ssfa_ISLineAdjust  tinyint;
declare ssfa_LineAdjust varchar(50);
declare ssfa_ISNoRunsAdjust tinyint;
declare ssfa_NoRunsAdjust varchar(30);
declare ssfa_DepartureSiteID varchar(20);
declare ssfa_DepartureSite varchar(50) CHARACTER SET utf8; 
declare ssfa_GetToSiteID varchar(20);
declare ssfa_GetToSite varchar(50) CHARACTER SET utf8;
declare ssfa_ModelID varchar(20);
declare ssfa_ModelName varchar(50) CHARACTER SET utf8;
declare ssfa_BeginDate char(10);
declare ssfa_EndDate char(10);
declare ssfa_BeginTime char(5);
declare ssfa_EndTime char(5);
declare ssfa_RunPrice decimal(12,2);
declare ssfa_LinkAdjustPrice  tinyint;

declare finished INTEGER DEFAULT 0;

declare  NUM1 INT;
declare  NUM2 INT;

Declare nnrap1 INT;
Declare nnrap2 INT;
Declare nnrap3 INT;
Declare ssfa1 INT;
Declare ssfa2 INT;
Declare ssfa3 INT;

Declare unit  varchar(50) CHARACTER SET utf8;

Declare li_tmp CURSOR FOR SELECT li_StationID, li_Station FROM tms_bd_LineInfo WHERE li_LineID IN(SELECT nri_LineID FROM tms_bd_NoRunsInfo WHERE nri_NoOfRunsID=NoOfRunsID);

Declare jy_tmp CURSOR FOR SELECT nri_BeginSiteID,nri_BeginSite,nri_EndSiteID,nri_EndSite,nri_DepartureTime,nri_CheckTicketWindow,nri_Allticket,nri_AllowSell,nri_LoopDate,nri_StartDay,nri_RunDay,nri_StopDay,nri_IsStopOrCreat,nri_LineID,nri_StationDeal,nri_RunRegion,nri_DealCategory,nri_DealStyle FROM tms_bd_NoRunsInfo WHERE nri_NoOfRunsID=NoOfRunsID;	

Declare qy_tmp CURSOR FOR SELECT nrl_ModelID, nrl_ModelName,nrl_BusID,nrl_BusCard,nrl_Seating,nrl_AddSeating,nrl_AllowHalfSeats,nrl_Loads FROM tms_bd_NoRunsLoop WHERE nrl_NoOfRunsID=NoOfRunsID AND nrl_LoopID=ttml_Orderno;

Declare sr_tmp CURSOR FOR SELECT sr_ReserveSeatNO,sr_ReserveSeatS FROM tms_bd_ScheduleReserve WHERE sr_NoOfRunsID = NoOfRunsID AND sr_ModelID=ttml_BusModelID;

Declare un_tmp CURSOR FOR SELECT bi_BusUnit FROM tms_bd_BusInfo WHERE bi_BusID=ttml_BusID;


Declare nds_tmp CURSOR FOR SELECT nds_ID,nds_SiteName,nds_SiteID,nds_IsDock,nds_GetOnSite,nds_CheckInSite,nds_DepartureTime,nds_CheckTicketWindow,nds_IsServiceFee,nds_ServiceFee,nds_otherFee1,nds_otherFee2,nds_otherFee3,nds_otherFee4,nds_otherFee5,nds_otherFee6,nds_StintSell,nds_StintTime FROM tms_bd_NoRunsDockSite WHERE nds_NoOfRunsID=NoOfRunsID;

Declare tm_tmp CURSOR FOR SELECT nds_ID,nds_SiteName,nds_SiteID,nds_DepartureTime FROM tms_bd_NoRunsDockSite WHERE nds_NoOfRunsID = NoOfRunsID AND nds_ID >tmp_nds_ID AND nds_IsDock = 1;

Declare jy1_tmp CURSOR FOR SELECT si_Kilometer FROM tms_bd_SectionInfo WHERE si_SiteNameID=ppd_FromStationID AND si_LineID=ttml_LineID;

Declare jy2_tmp CURSOR FOR SELECT si_Kilometer FROM tms_bd_SectionInfo WHERE si_SiteNameID=ppd_ReachStationID AND si_LineID=ttml_LineID;

Declare jy3_tmp CURSOR FOR SELECT tpf_MoneyRenKil FROM tms_bd_TicketPriceFactor WHERE NoOfRunsdate>=tpf_BeginDate AND NoOfRunsdate<=tpf_EndDate AND tpf_ModelID=ttml_BusModelID;

Declare nnrap1_tmp CURSOR FOR SELECT nrap_RunPrice,nrap_HalfPrice,nrap_BalancePrice FROM tms_bd_NoRunsAdjustPrice WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate AND nrap_NoRunsAdjust=NoOfRunsID AND nrap_ISNoRunsAdjust=0 AND nrap_ISLineAdjust=0 AND nrap_ModelID=ttml_BusModelID AND nrap_Unit=unit;
-- AND ttml_NoOfRunstime>=nrap_BeginTime and ttml_NoOfRunstime<=nrap_EndTime;
  
 

Declare nnrap2_tmp CURSOR FOR SELECT nrap_RunPrice,nrap_HalfPrice,nrap_BalancePrice FROM tms_bd_NoRunsAdjustPrice WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND  NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate AND nrap_NoRunsAdjust=NoOfRunsID AND nrap_ISNoRunsAdjust=1 AND nrap_ISLineAdjust=0 AND nrap_ModelID=ttml_BusModelID;
 -- AND ttml_NoOfRunstime>=nrap_BeginTime and -- ttml_NoOfRunstime<=nrap_EndTime;
 

Declare nnrap3_tmp CURSOR FOR SELECT nrap_RunPrice,nrap_HalfPrice,nrap_BalancePrice FROM tms_bd_NoRunsAdjustPrice WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND  NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate  AND nrap_ISNoRunsAdjust=0 AND nrap_ISLineAdjust=1 AND nrap_ModelID=ttml_BusModelID AND nrap_LineAdjust=ttml_LineID;
-- AND ttml_NoOfRunstime>=nrap_BeginTime and ttml_NoOfRunstime<=nrap_EndTime; 


 		
Declare ssfa1_tmp CURSOR FOR SELECT sfa_RunPrice FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate AND sfa_NoRunsAdjust=NoOfRunsID AND sfa_ISNoRunsAdjust=0 AND sfa_ISLineAdjust=0 AND sfa_ModelID=ttml_BusModelID AND sfa_Unit=unit;
-- AND ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime;

Declare ssfa2_tmp CURSOR FOR SELECT sfa_RunPrice FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate AND sfa_NoRunsAdjust=NoOfRunsID AND sfa_ISNoRunsAdjust=1 AND sfa_ISLineAdjust=0 AND sfa_ModelID=ttml_BusModelID;
-- AND ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime;

Declare ssfa3_tmp CURSOR FOR SELECT sfa_RunPrice FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate  AND sfa_ISNoRunsAdjust=0 AND sfa_ISLineAdjust=1 AND sfa_ModelID=ttml_BusModelID AND nrap_LineAdjust=ttml_LineID;
-- AND ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime;


Declare CONTINUE HANDLER FOR NOT FOUND SET finished=1;

Start Transaction;
	SET intRetVal=0;
	SET ttml_NoOfRunsID=NoOfRunsID; 
	SET ttml_NoOfRunsdate=NoOfRunsdate;
--	SET ttml_busID='123';
-- ------	
	OPEN li_tmp;
	FETCH li_tmp INTO ttml_StationID, ttml_Station;
	CLOSE li_tmp;
-- --------
	SELECT COUNT(*) INTO longcount FROM tms_bd_ScheduleLong WHERE sl_NoOfRunsID=NoOfRunsID AND sl_BeginDate<=NoOfRunsdate AND sl_EndDate>=NoOfRunsdate;
	IF longcount>0 THEN
		SET ttml_StopRun=0;	
	ELSE
		SET ttml_StopRun=1;
	END IF;
-- -------
	OPEN jy_tmp;
	FETCH jy_tmp INTO ttml_BeginstationID, ttml_Beginstation, ttml_EndstationID, ttml_Endstation, ttml_NoOfRunstime, ttml_CheckTicketWindow, ttml_Allticket,ttml_AllowSell,LoopDate, StartDay, RunDay, StopDay, IsStopCreat, ttml_LineID, ttml_StationDeal, ttml_RunRegion, ttml_DealCategory,ttml_DealStyle;
	CLOSE  jy_tmp;
-- ---------
	SELECT COUNT(*) INTO rotatecount  FROM tms_bd_NoRunsLoop WHERE nrl_NoOfRunsID=NoOfRunsID;
	SET Startday=IFNULL(Startday,0)	;
	SET Runday=IFNULL(Runday,0);
	SET Stopday=IFNULL(Stopday,0);
	SET DayCount=DATEDIFF(NoOfRunsdate, LoopDate);
	SET DayCount=DayCount-StartDay;
	IF rotatecount>0 THEN
		IF Runday=0 and Stopday=0 THEN
			SET ttml_Orderno=(DayCount MOD rotatecount)+1;
		ELSE
			IF  DayCount MOD (RunDay+StopDay)<Runday THEN
				SET ttml_StopRun=1;
				SET ttml_Orderno=(((DayCount DIV (RunDay+StopDay))*RunDay+ DayCount MOD (RunDay+StopDay)) MOD rotatecount)+1;
			ELSE
				SET ttml_StopRun=0;
			END IF;
		END IF;
	END IF;
--  -----
	SELECT COUNT(*) INTO buscount FROM tms_bd_NoRunsLoop WHERE nrl_NoOfRunsID=NoOfRunsID AND nrl_LoopID=ttml_Orderno;	

	IF buscount=1 THEN
		OPEN qy_tmp;
		FETCH qy_tmp INTO ttml_BusModelID,ttml_BusModel,ttml_BusID,ttml_BusCard,ttml_Seats,ttml_AddSeats,ttml_LeaveHalfSeats,ttml_Loads;
		CLOSE qy_tmp;
	END IF;
	

	OPEN un_tmp;
	FETCH un_tmp INTO unit;
	CLOSE un_tmp;
	
-- ------
	SET ttml_TotalSeats=IFNULL(ttml_Seats,0)+IFNULL(ttml_AddSeats,0);
	SET ttml_LeaveHalfSeats=IFNULL(ttml_LeaveHalfSeats,0);
	SET ttml_LeaveSeats=ttml_TotalSeats;
	SET ttml_SeatStatus=REPEAT('0',ttml_TotalSeats);
	SET ttml_FullSeats=0;
	SET ttml_HalfSeats=0;
	SET ttml_ReserveSeats=0;
-- -------------
	SELECT COUNT(*)	INTO recount FROM tms_bd_ScheduleReserve WHERE sr_NoOfRunsID = NoOfRunsID AND sr_ModelID=ttml_BusModelID;
	IF recount!=0 THEN

		OPEN sr_tmp;
		FETCH sr_tmp INTO SString,ttml_ReserveSeats;
		CLOSE sr_tmp;
		WHILE SString!='' or SString!=NULL DO
			SET L=INSTR(SString,',');
			SET Lsub=LEFT(SString,L-1);
			SET SString=SUBSTRING(SString,L+1);
			SET ttml_SeatStatus=INSERT(ttml_SeatStatus,Lsub,1,'2');
		END WHILE;
		SET ttml_LeaveSeats=ttml_LeaveSeats-ttml_ReserveSeats;
	END IF;
-- -----
	SET ttml_Created=NOW();
	SET ttml_Createdby=userBy;
	SET ttml_Updated=NOW();
	SET ttml_updatedby=userby;
--	SET ttml_busID=IFNULL(ttml_busID,0);	
-- ---  
	IF ttml_Allticket=1 THEN 
		SET ttml_busID='######';
		SET ttml_BusModelID=NULL;
		SET ttml_BusModel=NULL;
		SET ttml_TotalSeats=NULL;
		SET ttml_LeaveSeats=NULL;
		SET ttml_Loads=NULL;	
		SET ttml_SeatStatus=NULL;
		SET ttml_FullSeats=NULL;
		SET ttml_HalfSeats=NULL;
		SET ttml_LeaveHalfSeats=NULL;
		SET ttml_ReserveSeats=NULL;  
	END IF;

-- if开始
	IF ttml_StopRun!=0  THEN
		INSERT INTO tms_bd_TicketMode (tml_NoOfRunsID,tml_LineID,tml_NoOfRunsdate,tml_NoOfRunstime,tml_BeginstationID,tml_Beginstation,tml_EndstationID,tml_Endstation,tml_CheckTicketWindow,tml_Loads,tml_SeatStatus,tml_TotalSeats,tml_LeaveSeats,tml_HalfSeats,tml_LeaveHalfSeats,tml_ReserveSeats,tml_StopRun,tml_Allticket,tml_AllowSell,tml_Orderno,tml_StationID,tml_Station,tml_Created,tml_Createdby,tml_Updated,tml_Updatedby,tml_BusModelID,tml_BusModel,tml_BusID,tml_BusCard,tml_FreeSeats,tml_LeaveFreeSeats,tml_StationDeal,tml_RunRegion,tml_DealCategory,tml_DealStyle) VALUES(ttml_NoOfRunsID,ttml_LineID,ttml_NoOfRunsdate,ttml_NoOfRunstime,ttml_BeginstationID,ttml_Beginstation,ttml_EndstationID,ttml_Endstation,ttml_CheckTicketWindow,ttml_Loads,ttml_SeatStatus,ttml_TotalSeats,ttml_LeaveSeats,ttml_HalfSeats,ttml_LeaveHalfSeats,ttml_ReserveSeats,ttml_StopRun,ttml_Allticket,ttml_AllowSell,ttml_Orderno,ttml_StationID,ttml_Station,ttml_Created,ttml_Createdby,ttml_Updated,ttml_Updatedby,ttml_BusModelID,ttml_BusModel,ttml_BusID,ttml_BusCard,ttml_FreeSeats,ttml_LeaveFreeSeats,ttml_StationDeal,ttml_RunRegion,ttml_DealCategory,ttml_DealStyle);
	
-- IF1 开始
	IF ttml_AllowSell=1 THEN

-- --------------
	OPEN nds_tmp;
	WHILE finished=0 DO

		FETCH nds_tmp INTO tmp_nds_ID,tmp_nds_SiteName,tmp_nds_SiteID,tmp_nds_IsDock,tmp_nds_GetOnSite,tmp_nds_CheckInSite,tmp_nds_DepartureTime,tmp_nds_CheckTicketWindow,tmp_nds_IsServiceFee,tmp_nds_ServiceFee,tmp_nds_otherFee1,tmp_nds_otherFee2,tmp_nds_otherFee3,tmp_nds_otherFee4,tmp_nds_otherFee5,tmp_nds_otherFee6,tmp_nds_StintSell,tmp_nds_StintTime;
		
		IF NOT finished THEN
			SET  ppd_CheckInSite=tmp_nds_CheckInSite;
			IF tmp_nds_GetOnSite=1 || tmp_nds_IsDock=1 THEN

				SET ppd_NoOfRunsID=NoOfRunsID; 
            			SET ppd_LineID=ttml_LineID;  
            			SET ppd_NoOfRunsdate=NoOfRunsdate;  
            			SET ppd_BeginStationTime=ttml_NoOfRunstime;   
            			SET ppd_BeginStationID=ttml_BeginstationID;   
            			SET ppd_BeginStation=ttml_Beginstation;   
            			SET ppd_FromStationID=tmp_nds_SiteID;   
            			SET ppd_FromStation=tmp_nds_SiteName;   
            			SET ppd_EndStationID=ttml_EndstationID;   
            			SET ppd_EndStation=ttml_Endstation;  
            			SET ppd_ServiceFee=tmp_nds_ServiceFee;  
            			SET ppd_otherFee1=tmp_nds_otherFee1;   
            			SET ppd_otherFee2=tmp_nds_otherFee2;   
            			SET ppd_otherFee3=tmp_nds_otherFee3;   
           			SET ppd_otherFee4=tmp_nds_otherFee4;   
            			SET ppd_otherFee5=tmp_nds_otherFee5;   
            			SET ppd_otherFee6=tmp_nds_otherFee6;   
            			SET ppd_StintSell=tmp_nds_StintSell;   
            			SET ppd_StintTime=tmp_nds_StintTime;   
            			SET ppd_IsPass=1; 
				IF ppd_FromStationID=ppd_BeginStationID THEN
					SET ppd_IsFromSite=1;
				ELSE
					SET ppd_IsFromSite=0;
				END IF;
				
				SELECT COUNT(*) INTO NUM1 FROM tms_bd_SectionInfo WHERE si_SiteNameID=ppd_FromStationID AND si_LineID=ttml_LineID; 

				IF NUM1=1 THEN
					OPEN jy1_tmp;
					FETCH jy1_tmp INTO FromStationKilometer;
					CLOSE jy1_tmp;	
			
				END IF;
--   -----------------------------				
				OPEN tm_tmp;
				WHILE finished=0 DO
					FETCH tm_tmp INTO nnds_ID,nnds_SiteName,nnds_SiteID,nnds_DepartureTime;

					IF NOT finished THEN
						SET ppd_ReachStationID=nnds_SiteID;   
            					SET ppd_ReachStation=nnds_SiteName; 
						SET ppd_StopStationTime=nnds_DepartureTime;

						SELECT COUNT(*) INTO NUM2 FROM tms_bd_SectionInfo WHERE si_SiteNameID=ppd_ReachStationID AND si_LineID=ttml_LineID; 
						IF NUM2=1 THEN
							OPEN jy2_tmp;
							FETCH jy2_tmp INTO ToStationKilometer;
							CLOSE jy2_tmp;
						END IF;

						SET ppd_Distance=ToStationKilometer-FromStationKilometer;
						SET TotalMoneyRenKil=0; 
						
						OPEN jy3_tmp;
						WHILE finished=0 DO
							FETCH jy3_tmp INTO ttp_MoneyRenKil;
							IF NOT finished THEN
								SET TotalMoneyRenKil=TotalMoneyRenKil+ttp_MoneyRenKil;
							END IF;
						END WHILE;
						CLOSE jy3_tmp;
						SET finished=0;
						
						SET ppd_StandardPrice=TotalMoneyRenKil*ppd_Distance;
						SET ppd_FullPrice=ppd_StandardPrice; 
						SET ppd_HalfPrice=round(ppd_FullPrice*0.5);
						
						
						
  						SELECT COUNT(*) INTO nnrap1 FROM tms_bd_NoRunsAdjustPrice WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND  NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate AND nrap_NoRunsAdjust=NoOfRunsID AND nrap_ISNoRunsAdjust=0 AND nrap_ISLineAdjust=0 AND nrap_ModelID=ttml_BusModelID AND nrap_Unit=unit; 
-- 得加上协议单位-- AND ttml_NoOfRunstime>=nrap_BeginTime AND ttml_NoOfRunstime<=nrap_EndTime; 

						SELECT COUNT(*) INTO nnrap2 FROM tms_bd_NoRunsAdjustPrice WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND  NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate AND nrap_NoRunsAdjust=NoOfRunsID AND nrap_ISNoRunsAdjust=1 AND nrap_ISLineAdjust=0 AND nrap_ModelID=ttml_BusModelID;
 -- AND ttml_NoOfRunstime>=nrap_BeginTime AND ttml_NoOfRunstime<=nrap_EndTime; 

						SELECT COUNT(*) INTO nnrap3 FROM tms_bd_NoRunsAdjustPrice WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate AND nrap_ISNoRunsAdjust=0 AND nrap_ISLineAdjust=1 AND nrap_ModelID=ttml_BusModelID AND nrap_LineAdjust=ttml_LineID;
-- AND ttml_NoOfRunstime>=nrap_BeginTime AND ttml_NoOfRunstime<=nrap_EndTime; 

 
						IF nnrap1=1 THEN
							OPEN nnrap1_tmp;
							FETCH nnrap1_tmp INTO nnrap_RunPrice, nnrap_HalfPrice, nnrap_BalancePrice;
							SET ppd_FullPrice=nnrap_RunPrice; 
							SET ppd_HalfPrice=nnrap_HalfPrice;
							SET ppd_BalancePrice=nnrap_BalancePrice;
							CLOSE nnrap1_tmp;
						ELSE
							IF nnrap2=1 THEN
								OPEN nnrap2_tmp;
								FETCH nnrap2_tmp INTO nnrap_RunPrice, nnrap_HalfPrice,nnrap_BalancePrice;
								SET ppd_FullPrice=nnrap_RunPrice; 
								SET ppd_HalfPrice=nnrap_HalfPrice;
								SET ppd_BalancePrice=nnrap_BalancePrice;
								CLOSE nnrap2_tmp;
							ELSE
								IF nnrap3=1 THEN
									OPEN nnrap3_tmp;
									FETCH nnrap3_tmp INTO nnrap_RunPrice, nnrap_HalfPrice,nnrap_BalancePrice;
									SET ppd_FullPrice=nnrap_RunPrice; 
									SET ppd_HalfPrice=nnrap_HalfPrice;
									SET ppd_BalancePrice=nnrap_BalancePrice;
									CLOSE nnrap3_tmp;
								END IF;
							END IF;
						END IF; 


						SELECT COUNT(*) INTO ssfa1 FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate AND sfa_NoRunsAdjust=NoOfRunsID AND sfa_ISNoRunsAdjust=0 AND sfa_ISLineAdjust=0 AND sfa_ModelID=ttml_BusModelID AND sfa_Unit=unit;
-- ttml_BusModelID ;
-- ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime AND

						SELECT COUNT(*) INTO ssfa2 FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate AND sfa_NoRunsAdjust=NoOfRunsID AND sfa_ISNoRunsAdjust=1 AND sfa_ISLineAdjust=0 AND sfa_ModelID=ttml_BusModelID;
-- ttml_BusModelID ;
-- ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime AND

						SELECT COUNT(*) INTO ssfa3 FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate AND sfa_ISNoRunsAdjust=0 AND sfa_ISLineAdjust=1 AND sfa_ModelID=ttml_BusModelID AND sfa_LineAdjust=ttml_LineID; 
-- ttml_LineID;
-- ttml_BusModelID ;
-- ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime AND
			
						IF ssfa1=1 THEN
							OPEN ssfa1_tmp;
							FETCH ssfa1_tmp INTO ssfa_RunPrice;
							SET ppd_ServiceFee=ssfa_RunPrice; 
							CLOSE ssfa1_tmp;
						ELSE
							IF ssfa2=1 THEN
								OPEN ssfa2_tmp;
								FETCH ssfa2_tmp INTO ssfa_RunPrice;
								SET ppd_ServiceFee=ssfa_RunPrice; 
								CLOSE ssfa2_tmp;
							ELSE
								IF ssfa3=1 THEN
									OPEN ssfa3_tmp;
									FETCH ssfa3_tmp INTO ssfa_RunPrice;
									SET ppd_ServiceFee=ssfa_RunPrice; 
									CLOSE ssfa3_tmp;
								END IF;	
							END IF;
						END IF;


						SET ppd_StationID=ttml_StationID; 
            					SET ppd_Station=ttml_Station;   
            					SET ppd_Created=NOW();  
            					SET ppd_CreatedBY=userBY;   
            					SET ppd_Updated=NOW();   
            					SET ppd_UpdatedBY=userBY; 


						INSERT INTO tms_bd_PriceDetail (pd_NoOfRunsID,pd_LineID,pd_NoOfRunsdate,pd_BeginStationTime,pd_StopStationTime,pd_Distance,pd_BeginStationID,pd_BeginStation,pd_FromStationID,pd_FromStation,pd_ReachStationID,pd_ReachStation,pd_EndStationID,pd_EndStation,pd_FullPrice,pd_HalfPrice,pd_StandardPrice,pd_BalancePrice,pd_ServiceFee,pd_otherFee1,pd_otherFee2,pd_otherFee3,pd_otherFee4,pd_otherFee5,pd_otherFee6,pd_StationID,pd_Station,pd_Created,pd_CreatedBY,pd_Updated,pd_UpdatedBY,pd_IsPass,pd_CheckInSite,pd_IsFromSite,pd_StintSell,pd_StintTime) VALUES (ppd_NoOfRunsID,ppd_LineID,ppd_NoOfRunsdate,ppd_BeginStationTime,ppd_StopStationTime,ppd_Distance,ppd_BeginStationID,ppd_BeginStation,ppd_FromStationID,ppd_FromStation,ppd_ReachStationID,ppd_ReachStation,ppd_EndStationID,ppd_EndStation,IFNULL(ppd_FullPrice,0),IFNULL(ppd_HalfPrice,0),IFNULL(ppd_StandardPrice,0),IFNULL(ppd_BalancePrice,0),IFNULL(ppd_ServiceFee,0),IFNULL(ppd_otherFee1,0),IFNULL(ppd_otherFee2,0),IFNULL(ppd_otherFee3,0),IFNULL(ppd_otherFee4,0),IFNULL(ppd_otherFee5,0),IFNULL(ppd_otherFee6,0),ppd_StationID,ppd_Station,ppd_Created,ppd_CreatedBY,ppd_Updated,ppd_UpdatedBY,ppd_IsPass,ppd_CheckInSite,ppd_IsFromSite,ppd_StintSell,ppd_StintTime);  

					END IF;
				END WHILE;
				CLOSE tm_tmp;
				SET finished=0;


			END IF;		

		END IF;


	END WHILE;
	CLOSE nds_tmp; 
  END IF;
-- IF1 结束  
	
	SET intRetVal=1;
	
	END IF; -- if结束
commit;
END

//
CREATE PROCEDURE tms_bd_creatallticket(NoOfRunsID varchar(30), NoOfRunsdate char(10), BusID varchar(20), userBY varchar(50) CHARACTER SET utf8, OUT intRetVal int)
BEGIN
declare ttml_NoOfRunsID varchar(20);	
declare ttml_LineID varchar(30);
declare ttml_NoOfRunsdate char(10);	
declare ttml_NoOfRunstime char(5);	
declare ttml_BeginstationID varchar(20);	
declare ttml_Beginstation varchar(50) CHARACTER SET utf8;	
declare ttml_EndstationID varchar(20);	
declare ttml_Endstation varchar(50) CHARACTER SET utf8;	
declare ttml_CheckTicketWindow int;	
declare ttml_Loads int;
declare ttml_SeatStatus varchar(100);	
declare ttml_TotalSeats int;	
declare ttml_LeaveSeats int;
declare ttml_LeaveHalfSeats int;
declare ttml_Seats int;	
declare ttml_AddSeats int;	
declare ttml_FullSeats int;	
declare ttml_HalfSeats int;	
declare ttml_ReserveSeats int;	
declare ttml_StopRun tinyint;	
declare ttml_Allticket tinyint; 	
declare ttml_Orderno tinyint;	
declare ttml_StationID varchar(20);	
declare ttml_Station varchar(50) CHARACTER SET utf8;	
declare ttml_Created datetime;	
declare ttml_Createdby varchar(30) CHARACTER SET utf8;	
declare ttml_Updated datetime;	
declare ttml_Updatedby varchar(30) CHARACTER SET utf8;	
declare ttml_BusModelID varchar(20);	
declare ttml_BusModel varchar(50) CHARACTER SET utf8;	
declare ttml_BusID varchar(20);	
declare ttml_BusCard varchar(20) CHARACTER SET utf8;	
declare ttml_FreeSeats int;	
declare ttml_LeaveFreeSeats int;
declare ttml_StationDeal tinyint;  	
--
declare ttml_Orderno1 int;
--
declare ttml_RunRegion varchar(50) CHARACTER SET utf8;	
declare ttml_DealCategory varchar(20) CHARACTER SET utf8;	
declare ttml_DealStyle varchar(20) CHARACTER SET utf8;

declare LoopDate char(10);
declare StartDay int;
declare RunDay int;
declare StopDay int;
declare IsStopCreat tinyint;  
declare rotatecount int;
declare PriceCount int;
declare NoOfRunscount int;
declare longcount int;

Declare SString varchar(100);
Declare L int;
Declare Lsub varchar(10);


Declare FreeSeatsRate decimal(12,2);
Declare LeaveFreeSeatsRate decimal(12,2);

declare ppd_NoOfRunsID varchar(30);
declare ppd_LineID varchar(20);
declare ppd_NoOfRunsdate char(10);
declare ppd_BeginStationTime char(5);	
declare ppd_StopStationTime char(5);	
declare ppd_Distance decimal(12,2); 	
declare ppd_BeginStationID varchar(20);
declare ppd_BeginStation varchar(50) CHARACTER SET utf8;
declare ppd_FromStationID varchar(20);	
declare ppd_FromStation varchar(50) CHARACTER SET utf8;
declare ppd_ReachStationID varchar(20);	
declare ppd_ReachStation varchar(50) CHARACTER SET utf8;
declare ppd_EndStationID varchar(20);	
declare ppd_EndStation varchar(50) CHARACTER SET utf8;	
declare ppd_FullPrice decimal(12,2);	
declare ppd_HalfPrice decimal(12,2);	
declare ppd_StandardPrice decimal(12,2);
declare ppd_BalancePrice decimal(12,2);
declare ppd_ServiceFee decimal(12,2);	
declare ppd_otherFee1 decimal(12,2);	
declare ppd_otherFee2 decimal(12,2);	
declare ppd_otherFee3 decimal(12,2);	
declare ppd_otherFee4 decimal(12,2);	
declare ppd_otherFee5 decimal(12,2);	
declare ppd_otherFee6 decimal(12,2);	
declare ppd_StationID varchar(20);
declare ppd_Station varchar(50) CHARACTER SET utf8;	
declare ppd_Created datetime;	
declare ppd_CreatedBY varchar(30) CHARACTER SET utf8;
declare ppd_Updated datetime;	
declare ppd_UpdatedBY varchar(30) CHARACTER SET utf8;
declare ppd_IsPass tinyint; 
declare ppd_CheckInSite	tinyint;	
declare ppd_IsFromSite tinyint;	
declare ppd_StintSell tinyint;	
declare ppd_StintTime char(5);	


declare nnds_ID tinyint;
declare nnds_SiteName varchar(50) CHARACTER SET utf8;
declare nnds_SiteID varchar(20);
declare nnds_IsDock tinyint;
declare nnds_GetOnSite tinyint;
declare nnds_CheckInSite tinyint;
declare nnds_DepartureTime char(5);
declare nnds_CheckTicketWindow tinyint;
declare nnds_IsServiceFee tinyint;
declare nnds_ServiceFee decimal(12,2);
declare nnds_otherFee1 decimal(12,2);
declare nnds_otherFee2 decimal(12,2);
declare nnds_otherFee3 decimal(12,2);
declare nnds_otherFee4 decimal(12,2);
declare nnds_otherFee5 decimal(12,2);
declare nnds_otherFee6 decimal(12,2);
declare nnds_StintSell int;
declare nnds_StintTime char(5);

declare tmp_nds_ID tinyint;
declare tmp_nds_SiteName varchar(50) CHARACTER SET utf8;
declare tmp_nds_SiteID varchar(20);
declare tmp_nds_IsDock  tinyint;
declare tmp_nds_GetOnSite  tinyint;
declare tmp_nds_CheckInSite  tinyint;
declare tmp_nds_DepartureTime char(5);
declare tmp_nds_CheckTicketWindow tinyint;
declare tmp_nds_IsServiceFee tinyint;
declare tmp_nds_ServiceFee decimal(12,2);
declare tmp_nds_otherFee1 decimal(12,2);
declare tmp_nds_otherFee2 decimal(12,2);
declare tmp_nds_otherFee3 decimal(12,2);
declare tmp_nds_otherFee4 decimal(12,2);
declare tmp_nds_otherFee5 decimal(12,2);
declare tmp_nds_otherFee6 decimal(12,2);
declare tmp_nds_StintSell int;
declare tmp_nds_StintTime char(5);

Declare FromStationKilometer decimal(12,2);
Declare ToStationKilometer decimal(12,2);

declare ttpf_PriceProject varchar(20);
declare ttpf_BeginDate char(10);
declare ttpf_EndDate char(10);
declare ttpf_MoneyRenKil decimal(12,2);
declare TotalMoneyRenKil decimal(12,2);
Declare ttp_MoneyRenKil decimal(12,2);

declare nnrap_ISLineAdjust  tinyint;
declare nnrap_LineAdjust varchar(50);
declare nnrap_ISNoRunsAdjust tinyint;
declare nnrap_NoRunsAdjust varchar(30);
declare nnrap_DepartureSiteID varchar(20);
declare nnrap_DepartureSite varchar(50) CHARACTER SET utf8;
declare nnrap_GetToSiteID varchar(20);
declare nnrap_GetToSite varchar(50) CHARACTER SET utf8;
declare nnrap_ModelID varchar(20);
declare nnrap_ModelName varchar(50) CHARACTER SET utf8;
declare nnrap_BeginDate char(10);
declare nnrap_EndDate char(10);
declare nnrap_BeginTime char(5);
declare nnrap_EndTime char(5);
declare nnrap_ReferPrice decimal(12,2);
declare nnrap_PriceUpPercent decimal(12,2);
declare nnrap_RunPrice decimal(12,2);
declare nnrap_HalfPrice decimal(12,2);
declare nnrap_BalancePrice decimal(12,2);
declare nnrap_LinkAdjustPrice  tinyint;

declare ssfa_ISLineAdjust  tinyint;
declare ssfa_LineAdjust varchar(50);
declare ssfa_ISNoRunsAdjust tinyint;
declare ssfa_NoRunsAdjust varchar(30);
declare ssfa_DepartureSiteID varchar(20);
declare ssfa_DepartureSite varchar(50) CHARACTER SET utf8; 
declare ssfa_GetToSiteID varchar(20);
declare ssfa_GetToSite varchar(50) CHARACTER SET utf8;
declare ssfa_ModelID varchar(20);
declare ssfa_ModelName varchar(50) CHARACTER SET utf8;
declare ssfa_BeginDate char(10);
declare ssfa_EndDate char(10);
declare ssfa_BeginTime char(5);
declare ssfa_EndTime char(5);
declare ssfa_RunPrice decimal(12,2);
declare ssfa_LinkAdjustPrice  tinyint;

declare finished INTEGER DEFAULT 0;

declare  NUM1 INT;
declare  NUM2 INT;

Declare nnrap1 INT;
Declare nnrap2 INT;
Declare nnrap3 INT;
Declare ssfa1 INT;
Declare ssfa2 INT;
Declare ssfa3 INT;
Declare PricesCount INT;

Declare unit varchar(50) CHARACTER SET utf8;
Declare tttml_TotalSeats int;
Declare tttml_LeaveSeats int;


Declare li_tmp CURSOR FOR SELECT li_StationID, li_Station FROM tms_bd_LineInfo WHERE li_LineID IN(SELECT nri_LineID FROM tms_bd_NoRunsInfo WHERE nri_NoOfRunsID=NoOfRunsID);

Declare jy_tmp CURSOR FOR SELECT nri_BeginSiteID,nri_BeginSite,nri_EndSiteID,nri_EndSite,nri_DepartureTime,nri_CheckTicketWindow,nri_Allticket,nri_LoopDate,nri_StartDay,nri_RunDay,nri_StopDay,nri_IsStopOrCreat,nri_LineID,nri_NoOfRunsID,nri_StationDeal,nri_RunRegion,nri_DealCategory,nri_DealStyle FROM tms_bd_NoRunsInfo WHERE nri_NoOfRunsID=NoOfRunsID;	

Declare by_tmp CURSOR FOR SELECT bi_BusUnit, bi_BusTypeID, bi_BusType,bi_BusID,bi_BusNumber,bi_SeatS,bi_AddSeatS,bi_AllowHalfSeats FROM tms_bd_BusInfo WHERE bi_BusID=BusID;

-- Declare bm_tmp CURSOR FOR SELECT bm_AllowHalfSeats FROM tms_bd_BusModel WHERE bm_ModelID=ttml_BusModelID;

-- ---


Declare nds_tmp CURSOR FOR SELECT nds_ID,nds_SiteName,nds_SiteID,nds_IsDock,nds_GetOnSite,nds_CheckInSite,nds_DepartureTime,nds_CheckTicketWindow,nds_IsServiceFee,nds_ServiceFee,nds_otherFee1,nds_otherFee2,nds_otherFee3,nds_otherFee4,nds_otherFee5,nds_otherFee6,nds_StintSell,nds_StintTime FROM tms_bd_NoRunsDockSite WHERE nds_NoOfRunsID=ttml_NoOfRunsID;

Declare tm_tmp CURSOR FOR SELECT nds_ID,nds_SiteName,nds_SiteID,nds_DepartureTime FROM tms_bd_NoRunsDockSite WHERE nds_NoOfRunsID=ttml_NoOfRunsID AND nds_ID >tmp_nds_ID AND nds_IsDock=1;

Declare jy1_tmp CURSOR FOR SELECT si_Kilometer FROM tms_bd_SectionInfo WHERE si_SiteNameID=ppd_FromStationID AND si_LineID=ttml_LineID;

Declare jy2_tmp CURSOR FOR SELECT si_Kilometer FROM tms_bd_SectionInfo WHERE si_SiteNameID=ppd_ReachStationID AND si_LineID=ttml_LineID;

Declare jy3_tmp CURSOR FOR SELECT tpf_MoneyRenKil FROM tms_bd_TicketPriceFactor WHERE NoOfRunsdate>=tpf_BeginDate AND NoOfRunsdate<=tpf_EndDate AND tpf_ModelID=ttml_BusModelID;

Declare tmd_tmp CURSOR FOR SELECT tml_TotalSeats, tml_LeaveSeats FROM tms_bd_TicketMode WHERE tml_NoOfRunsID=NoOfRunsID AND tml_NoOfRunsdate=NoOfRunsdate;

Declare nnrap1_tmp CURSOR FOR SELECT nrap_RunPrice,nrap_HalfPrice,nnrap_BalancePrice FROM tms_bd_NoRunsAdjustPrice	WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND  NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate AND nrap_NoRunsAdjust=ttml_NoOfRunsID AND nrap_ISNoRunsAdjust=0 AND nrap_ISLineAdjust=0 AND nrap_ModelID=ttml_BusModelID AND nrap_Unit=unit;
-- AND ttml_NoOfRunstime>=nrap_BeginTime and ttml_NoOfRunstime<=nrap_EndTime;
  
 

Declare nnrap2_tmp CURSOR FOR SELECT nrap_RunPrice,nrap_HalfPrice,nnrap_BalancePrice FROM tms_bd_NoRunsAdjustPrice WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND  NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate AND nrap_NoRunsAdjust=ttml_NoOfRunsID AND nrap_ISNoRunsAdjust=1 AND nrap_ISLineAdjust=0 AND nrap_ModelID=ttml_BusModelID;
 -- AND ttml_NoOfRunstime>=nrap_BeginTime and -- ttml_NoOfRunstime<=nrap_EndTime;
 

Declare nnrap3_tmp CURSOR FOR SELECT nrap_RunPrice,nrap_HalfPrice,nnrap_BalancePrice FROM tms_bd_NoRunsAdjustPrice WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND  NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate  AND nrap_ISNoRunsAdjust=0 AND nrap_ISLineAdjust=1 AND nrap_ModelID=ttml_BusModelID AND nrap_LineAdjust=ttml_LineID;
-- AND ttml_NoOfRunstime>=nrap_BeginTime and ttml_NoOfRunstime<=nrap_EndTime; 


 		
Declare ssfa1_tmp CURSOR FOR SELECT sfa_RunPrice FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate AND sfa_NoRunsAdjust=ttml_NoOfRunsID AND sfa_ISNoRunsAdjust=0 AND sfa_ISLineAdjust=0 AND sfa_ModelID=ttml_BusModelID AND sfa_Unit=unit;
-- AND ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime;

Declare ssfa2_tmp CURSOR FOR SELECT sfa_RunPrice FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate AND sfa_NoRunsAdjust=ttml_NoOfRunsID AND sfa_ISNoRunsAdjust=1 AND sfa_ISLineAdjust=0 AND sfa_ModelID=ttml_BusModelID;
-- AND ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime;

Declare ssfa3_tmp CURSOR FOR SELECT sfa_RunPrice FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate  AND sfa_ISNoRunsAdjust=0 AND sfa_ISLineAdjust=1 AND sfa_ModelID=ttml_BusModelID AND nrap_LineAdjust=ttml_LineID;
-- AND ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime ;


Declare CONTINUE HANDLER FOR NOT FOUND SET finished=1;

Start Transaction;
	SET intRetVal=0;
	SET ttml_NoOfRunsID=NoOfRunsID; 
	SET ttml_NoOfRunsdate=NoOfRunsdate;
	SET ttml_busID=busID;
-- ------	
	OPEN li_tmp;
	FETCH li_tmp INTO ttml_StationID, ttml_Station;
	CLOSE li_tmp;
-- --------
	
	OPEN jy_tmp;
	FETCH jy_tmp INTO ttml_BeginstationID, ttml_Beginstation, ttml_EndstationID, ttml_Endstation, ttml_NoOfRunstime, ttml_CheckTicketWindow, ttml_Allticket, LoopDate, StartDay, RunDay, StopDay, IsStopCreat,ttml_LineID, ttml_NoOfRunsID, ttml_StationDeal, ttml_RunRegion, ttml_DealCategory,ttml_DealStyle;
	CLOSE  jy_tmp;
-- -------
	SELECT COUNT(*) INTO longcount FROM tms_bd_ScheduleLong WHERE sl_NoOfRunsID=ttml_NoOfRunsID AND sl_BeginDate<=NoOfRunsdate AND sl_EndDate>=NoOfRunsdate;
	IF longcount>0 THEN
		SET ttml_StopRun=0;	
	ELSE
		SET ttml_StopRun=1;
	END IF;

	
-- -----
	
-- ------
	OPEN by_tmp;
	FETCH by_tmp INTO unit, ttml_BusModelID,ttml_BusModel,ttml_BusID,ttml_BusCard,ttml_Seats,ttml_AddSeats,ttml_LeaveHalfSeats;
	CLOSE by_tmp;

--	OPEN bm_tmp;
--	FETCH bm_tmp INTO ttml_LeaveHalfSeats;
--	CLOSE bm_tmp;

	OPEN tmd_tmp;
	FETCH tmd_tmp INTO tttml_TotalSeats, tttml_LeaveSeats;
	CLOSE tmd_tmp;

-- ------
	SET ttml_TotalSeats=IFNULL(ttml_Seats,0)+IFNULL(ttml_AddSeats,0);
	SET ttml_LeaveHalfSeats=IFNULL(ttml_LeaveHalfSeats,0);
	SET tttml_TotalSeats=IFNULL(tttml_TotalSeats,0);
	SET tttml_LeaveSeats=IFNULL(tttml_LeaveSeats,0);
	SET tttml_TotalSeats=tttml_TotalSeats+ttml_TotalSeats;
	SET tttml_LeaveSeats= tttml_LeaveSeats+ttml_TotalSeats;
-- -----
	SET ttml_Created=NOW();
	SET ttml_Createdby=userBy;
	SET ttml_Updated=NOW();
	SET ttml_updatedby=userby;
--	SET ttml_busID=IFNULL(ttml_busID,0);	
-- ---  
  
-- if开始
	IF ttml_StopRun!=0 and ttml_busID!=0 and ttml_Allticket!=0 THEN
			UPDATE tms_bd_TicketMode SET tml_NoOfRunsID=ttml_NoOfRunsID,tml_LineID=ttml_LineID,tml_NoOfRunsdate=ttml_NoOfRunsdate,tml_NoOfRunstime=ttml_NoOfRunstime,tml_BeginstationID=ttml_BeginstationID,tml_Beginstation=ttml_Beginstation,tml_EndstationID=ttml_EndstationID,tml_Endstation=ttml_Endstation,tml_CheckTicketWindow=ttml_CheckTicketWindow,tml_Loads=ttml_Loads,tml_SeatStatus=ttml_SeatStatus,tml_TotalSeats=tttml_TotalSeats,tml_LeaveSeats=tttml_LeaveSeats,tml_HalfSeats=ttml_HalfSeats,tml_LeaveHalfSeats=ttml_LeaveHalfSeats,tml_ReserveSeats=ttml_ReserveSeats,tml_StopRun=ttml_StopRun,tml_Allticket=ttml_Allticket,tml_Orderno=ttml_Orderno,tml_StationID=ttml_StationID,tml_Station=ttml_Station,tml_Created=ttml_Created,tml_Createdby=ttml_Createdby,tml_Updated=ttml_Updated,tml_Updatedby=ttml_Updatedby,tml_BusModelID=ttml_BusModelID,tml_BusModel=ttml_BusModel,tml_BusID='######',tml_BusCard=NULL,tml_FreeSeats=ttml_FreeSeats,tml_LeaveFreeSeats=ttml_LeaveFreeSeats,tml_StationDeal=ttml_StationDeal,tml_RunRegion=ttml_RunRegion,tml_DealCategory=ttml_DealCategory,tml_DealStyle=ttml_DealStyle WHERE tml_NoOfRunsID=ttml_NoOfRunsID AND tml_NoOfRunsdate=ttml_NoOfRunsdate;


-- --------------
	OPEN nds_tmp;
	WHILE finished=0 DO

		FETCH nds_tmp INTO tmp_nds_ID,tmp_nds_SiteName,tmp_nds_SiteID,tmp_nds_IsDock,tmp_nds_GetOnSite,tmp_nds_CheckInSite,tmp_nds_DepartureTime,tmp_nds_CheckTicketWindow,tmp_nds_IsServiceFee,tmp_nds_ServiceFee,tmp_nds_otherFee1,tmp_nds_otherFee2,tmp_nds_otherFee3,tmp_nds_otherFee4,tmp_nds_otherFee5,tmp_nds_otherFee6,tmp_nds_StintSell,tmp_nds_StintTime;
		
		IF NOT finished THEN
			SET  ppd_CheckInSite=tmp_nds_CheckInSite;
			IF tmp_nds_GetOnSite=1 || tmp_nds_IsDock=1 THEN

				SET ppd_NoOfRunsID=ttml_NoOfRunsID; 
            			SET ppd_LineID=ttml_LineID;  
            			SET ppd_NoOfRunsdate=NoOfRunsdate;  
            			SET ppd_BeginStationTime=ttml_NoOfRunstime;   
            			SET ppd_BeginStationID=ttml_BeginstationID;   
            			SET ppd_BeginStation=ttml_Beginstation;   
            			SET ppd_FromStationID=tmp_nds_SiteID;   
            			SET ppd_FromStation=tmp_nds_SiteName;   
            			SET ppd_EndStationID=ttml_EndstationID;   
            			SET ppd_EndStation=ttml_Endstation;  
            			SET ppd_ServiceFee=tmp_nds_ServiceFee;  
            			SET ppd_otherFee1=tmp_nds_otherFee1;   
            			SET ppd_otherFee2=tmp_nds_otherFee2;   
            			SET ppd_otherFee3=tmp_nds_otherFee3;   
           			SET ppd_otherFee4=tmp_nds_otherFee4;   
            			SET ppd_otherFee5=tmp_nds_otherFee5;   
            			SET ppd_otherFee6=tmp_nds_otherFee6;   
            			SET ppd_StintSell=tmp_nds_StintSell;   
            			SET ppd_StintTime=tmp_nds_StintTime;   
            			SET ppd_IsPass=1; 
				IF ppd_FromStationID=ppd_BeginStationID THEN
					SET ppd_IsFromSite=1;
				ELSE
					SET ppd_IsFromSite=0;
				END IF;
				
				SELECT COUNT(*) INTO NUM1 FROM tms_bd_SectionInfo WHERE si_SiteNameID=ppd_FromStationID AND si_LineID=ttml_LineID; 

				IF NUM1=1 THEN
					OPEN jy1_tmp;
					FETCH jy1_tmp INTO FromStationKilometer;
					CLOSE jy1_tmp;	
			
				END IF;
--   -----------------------------				
				OPEN tm_tmp;
				WHILE finished=0 DO
					FETCH tm_tmp INTO nnds_ID,nnds_SiteName,nnds_SiteID,nnds_DepartureTime;

					IF NOT finished THEN
						SET ppd_ReachStationID=nnds_SiteID;   
            					SET ppd_ReachStation=nnds_SiteName; 
						SET ppd_StopStationTime=nnds_DepartureTime;

						SELECT COUNT(*) INTO NUM2 FROM tms_bd_SectionInfo WHERE si_SiteNameID=ppd_ReachStationID AND si_LineID=ttml_LineID; 
						IF NUM2=1 THEN
							OPEN jy2_tmp;
							FETCH jy2_tmp INTO ToStationKilometer;
							CLOSE jy2_tmp;
						END IF;

						SET ppd_Distance=ToStationKilometer-FromStationKilometer;
						SET TotalMoneyRenKil=0; 
						
						OPEN jy3_tmp;
						WHILE finished=0 DO
							FETCH jy3_tmp INTO ttp_MoneyRenKil;
							IF NOT finished THEN
								SET TotalMoneyRenKil=TotalMoneyRenKil+ttp_MoneyRenKil;
							END IF;
						END WHILE;
						CLOSE jy3_tmp;
						SET finished=0;
						
						SET ppd_StandardPrice=TotalMoneyRenKil*ppd_Distance;
						SET ppd_FullPrice=ppd_StandardPrice; 
						SET ppd_HalfPrice=round(ppd_FullPrice*0.5);
						
						
						
  						SELECT COUNT(*) INTO nnrap1 FROM tms_bd_NoRunsAdjustPrice WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND  NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate AND nrap_NoRunsAdjust=ttml_NoOfRunsID AND nrap_ISNoRunsAdjust=0 AND nrap_ISLineAdjust=0 AND nrap_ModelID=ttml_BusModelID AND nrap_Unit=unit; 
-- AND ttml_NoOfRunstime>=nrap_BeginTime AND ttml_NoOfRunstime<=nrap_EndTime; 

						SELECT COUNT(*) INTO nnrap2 FROM tms_bd_NoRunsAdjustPrice WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND  NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate AND nrap_NoRunsAdjust=ttml_NoOfRunsID AND nrap_ISNoRunsAdjust=1 AND nrap_ISLineAdjust=0 AND nrap_ModelID=ttml_BusModelID;
 -- AND ttml_NoOfRunstime>=nrap_BeginTime AND ttml_NoOfRunstime<=nrap_EndTime; 

						SELECT COUNT(*) INTO nnrap3 FROM tms_bd_NoRunsAdjustPrice WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate AND nrap_ISNoRunsAdjust=0 AND nrap_ISLineAdjust=1 AND nrap_ModelID=ttml_BusModelID AND nrap_LineAdjust=ttml_LineID;
-- AND ttml_NoOfRunstime>=nrap_BeginTime AND ttml_NoOfRunstime<=nrap_EndTime; 

 
						IF nnrap1=1 THEN
							OPEN nnrap1_tmp;
							FETCH nnrap1_tmp INTO nnrap_RunPrice, nnrap_HalfPrice,nnrap_BalancePrice;
							SET ppd_FullPrice=nnrap_RunPrice; 
							SET ppd_HalfPrice=nnrap_HalfPrice;
							SET ppd_BalancePrice=nnrap_BalancePrice;
							CLOSE nnrap1_tmp;
						ELSE
							IF nnrap2=1 THEN
								OPEN nnrap2_tmp;
								FETCH nnrap2_tmp INTO nnrap_RunPrice, nnrap_HalfPrice,nnrap_BalancePrice;
								SET ppd_FullPrice=nnrap_RunPrice; 
								SET ppd_HalfPrice=nnrap_HalfPrice;
								SET ppd_BalancePrice=nnrap_BalancePrice;
								CLOSE nnrap2_tmp;
							ELSE
								IF nnrap3=1 THEN
									OPEN nnrap3_tmp;
									FETCH nnrap3_tmp INTO nnrap_RunPrice, nnrap_HalfPrice,nnrap_BalancePrice;
									SET ppd_FullPrice=nnrap_RunPrice; 
									SET ppd_HalfPrice=nnrap_HalfPrice;
									SET ppd_BalancePrice=nnrap_BalancePrice;
									CLOSE nnrap3_tmp;
								END IF;
							END IF;
						END IF; 


						SELECT COUNT(*) INTO ssfa1 FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate AND sfa_NoRunsAdjust=ttml_NoOfRunsID AND sfa_ISNoRunsAdjust=0 AND sfa_ISLineAdjust=0 AND sfa_ModelID=ttml_BusModelID AND sfa_Unit=unit;
-- ttml_BusModelID ;
-- ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime AND

						SELECT COUNT(*) INTO ssfa2 FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate AND sfa_NoRunsAdjust=ttml_NoOfRunsID AND sfa_ISNoRunsAdjust=1 AND sfa_ISLineAdjust=0 AND sfa_ModelID=ttml_BusModelID;
-- ttml_BusModelID ;
-- ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime AND

						SELECT COUNT(*) INTO ssfa3 FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate AND sfa_ISNoRunsAdjust=0 AND sfa_ISLineAdjust=1 AND sfa_ModelID=ttml_BusModelID AND sfa_LineAdjust=ttml_LineID; 
-- ttml_LineID;
-- ttml_BusModelID ;
-- ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime AND
			
						IF ssfa1=1 THEN
							OPEN ssfa1_tmp;
							FETCH ssfa1_tmp INTO ssfa_RunPrice;
							SET ppd_ServiceFee=ssfa_RunPrice; 
							CLOSE ssfa1_tmp;
						ELSE
							IF ssfa2=1 THEN
								OPEN ssfa2_tmp;
								FETCH ssfa2_tmp INTO ssfa_RunPrice;
								SET ppd_ServiceFee=ssfa_RunPrice; 
								CLOSE ssfa2_tmp;
							ELSE
								IF ssfa3=1 THEN
									OPEN ssfa3_tmp;
									FETCH ssfa3_tmp INTO ssfa_RunPrice;
									SET ppd_ServiceFee=ssfa_RunPrice; 
									CLOSE ssfa3_tmp;
								END IF;	
							END IF;
						END IF;


						SET ppd_StationID=ttml_StationID; 
            					SET ppd_Station=ttml_Station;   
            					SET ppd_Created=NOW();  
            					SET ppd_CreatedBY=userBY;   
            					SET ppd_Updated=NOW();   
            					SET ppd_UpdatedBY=userBY; 
						
						SELECT COUNT(*) INTO PricesCount FROM tms_bd_PriceDetail WHERE pd_NoOfRunsID=ppd_NoOfRunsID AND pd_NoOfRunsdate=ppd_NoOfRunsdate AND pd_FromStationID=ppd_FromStationID AND pd_ReachStationID=ppd_ReachStationID;
						IF PricesCount>0 THEN
							UPDATE tms_bd_PriceDetail SET pd_NoOfRunsID=ppd_NoOfRunsID,pd_LineID=ppd_LineID,pd_NoOfRunsdate=ppd_NoOfRunsdate, pd_BeginStationTime=ppd_BeginStationTime,pd_StopStationTime=ppd_StopStationTime,pd_Distance=ppd_Distance,pd_BeginStationID=ppd_BeginStationID,pd_BeginStation=ppd_BeginStation,pd_FromStationID=ppd_FromStationID,pd_FromStation=ppd_FromStation,pd_ReachStationID=ppd_ReachStationID,pd_ReachStation=ppd_ReachStation,pd_EndStationID=ppd_EndStationID, pd_EndStation=ppd_EndStation,pd_FullPrice=ppd_FullPrice,pd_HalfPrice=ppd_HalfPrice,pd_StandardPrice=ppd_StandardPrice,pd_BalancePrice=ppd_BalancePrice,pd_ServiceFee=ppd_ServiceFee,pd_otherFee1=ppd_otherFee1,pd_otherFee2=ppd_otherFee2,pd_otherFee3=ppd_otherFee3,pd_otherFee4=ppd_otherFee4,pd_otherFee5=ppd_otherFee5,pd_otherFee6=ppd_otherFee6,pd_StationID=ppd_StationID,pd_Station=ppd_Station,pd_Created=ppd_Created,pd_CreatedBY=ppd_CreatedBY,pd_Updated=ppd_Updated,pd_UpdatedBY=ppd_UpdatedBY,pd_IsPass=ppd_IsPass,pd_CheckInSite=ppd_CheckInSite,pd_IsFromSite=ppd_IsFromSite,pd_StintSell=ppd_StintSell,pd_StintTime=ppd_StintTime WHERE pd_NoOfRunsID=ppd_NoOfRunsID AND pd_NoOfRunsdate=ppd_NoOfRunsdate AND pd_FromStationID=ppd_FromStationID AND pd_ReachStationID=ppd_ReachStationID;
						ELSE
							INSERT INTO tms_bd_PriceDetail (pd_NoOfRunsID,pd_LineID,pd_NoOfRunsdate,pd_BeginStationTime,pd_StopStationTime,pd_Distance,pd_BeginStationID,pd_BeginStation,pd_FromStationID,pd_FromStation,pd_ReachStationID,pd_ReachStation,pd_EndStationID,pd_EndStation,pd_FullPrice,pd_HalfPrice,pd_StandardPrice,pd_BalancePrice,pd_ServiceFee,pd_otherFee1,pd_otherFee2,pd_otherFee3,pd_otherFee4,pd_otherFee5,pd_otherFee6,pd_StationID,pd_Station,pd_Created,pd_CreatedBY,pd_Updated,pd_UpdatedBY,pd_IsPass,pd_CheckInSite,pd_IsFromSite,pd_StintSell,pd_StintTime) VALUES (ppd_NoOfRunsID,ppd_LineID,ppd_NoOfRunsdate,ppd_BeginStationTime,ppd_StopStationTime,ppd_Distance,ppd_BeginStationID,ppd_BeginStation,ppd_FromStationID,ppd_FromStation,ppd_ReachStationID,ppd_ReachStation,ppd_EndStationID,ppd_EndStation,ppd_FullPrice,ppd_HalfPrice,ppd_StandardPrice,ppd_BalancePrice,ppd_ServiceFee,ppd_otherFee1,ppd_otherFee2,ppd_otherFee3,ppd_otherFee4,ppd_otherFee5,ppd_otherFee6,ppd_StationID,ppd_Station,ppd_Created,ppd_CreatedBY,ppd_Updated,ppd_UpdatedBY,ppd_IsPass,ppd_CheckInSite,ppd_IsFromSite,ppd_StintSell,ppd_StintTime);  
						END IF;


					END IF;
				END WHILE;
				CLOSE tm_tmp;
				SET finished=0;


			END IF;		

		END IF;


	END WHILE;
	CLOSE nds_tmp; 
	
	SET intRetVal=1;

--	ESLE
--		SET intRetVal=0;	
	END IF; -- if结束
commit;
END

//
CREATE PROCEDURE tms_bd_updatenotallticket(NoOfRunsID varchar(30), NoOfRunsdate char(10), BusID varchar(20), userBY varchar(50) CHARACTER SET utf8, OUT intRetVal int)
BEGIN
declare ttml_NoOfRunsID varchar(20);	
declare ttml_LineID varchar(30);
declare ttml_NoOfRunsdate char(10);	
declare ttml_NoOfRunstime char(5);	
declare ttml_BeginstationID varchar(20);	
declare ttml_Beginstation varchar(50) CHARACTER SET utf8;	
declare ttml_EndstationID varchar(20);	
declare ttml_Endstation varchar(50) CHARACTER SET utf8;	
declare ttml_CheckTicketWindow int;	
declare ttml_Loads int;
declare ttml_SeatStatus varchar(100);	
declare ttml_TotalSeats int;	
declare ttml_LeaveSeats int;
declare ttml_LeaveHalfSeats int;
declare ttml_Seats int;	
declare ttml_AddSeats int;	
declare ttml_FullSeats int;	
declare ttml_HalfSeats int;	
declare ttml_ReserveSeats int;	
declare ttml_StopRun tinyint;	
declare ttml_Allticket tinyint;
declare ttml_AllowSell tinyint; 	
declare ttml_Orderno tinyint;	
declare ttml_StationID varchar(20);	
declare ttml_Station varchar(50) CHARACTER SET utf8;	
declare ttml_Created datetime;	
declare ttml_Createdby varchar(30) CHARACTER SET utf8;	
declare ttml_Updated datetime;	
declare ttml_Updatedby varchar(30) CHARACTER SET utf8;	
declare ttml_BusModelID varchar(20);	
declare ttml_BusModel varchar(50) CHARACTER SET utf8;	
declare ttml_BusID varchar(20);	
declare ttml_BusCard varchar(20) CHARACTER SET utf8;	
declare ttml_FreeSeats int;	
declare ttml_LeaveFreeSeats int;
declare ttml_StationDeal tinyint;  	
--
declare ttml_Orderno1 int;
--
declare ttml_RunRegion varchar(50) CHARACTER SET utf8;	
declare ttml_DealCategory varchar(20) CHARACTER SET utf8;	
declare ttml_DealStyle varchar(20) CHARACTER SET utf8;

declare LoopDate char(10);
declare StartDay int;
declare RunDay int;
declare StopDay int;
declare IsStopCreat tinyint;  
declare rotatecount int;
declare PriceCount int;
declare NoOfRunscount int;
declare longcount int;

Declare SString varchar(100);
Declare L int;
Declare Lsub varchar(10);


Declare FreeSeatsRate decimal(12,2);
Declare LeaveFreeSeatsRate decimal(12,2);

declare ppd_NoOfRunsID varchar(30);
declare ppd_LineID varchar(20);
declare ppd_NoOfRunsdate char(10);
declare ppd_BeginStationTime char(5);	
declare ppd_StopStationTime char(5);	
declare ppd_Distance decimal(12,2); 	
declare ppd_BeginStationID varchar(20);
declare ppd_BeginStation varchar(50) CHARACTER SET utf8;
declare ppd_FromStationID varchar(20);	
declare ppd_FromStation varchar(50) CHARACTER SET utf8;
declare ppd_ReachStationID varchar(20);	
declare ppd_ReachStation varchar(50) CHARACTER SET utf8;
declare ppd_EndStationID varchar(20);	
declare ppd_EndStation varchar(50) CHARACTER SET utf8;	
declare ppd_FullPrice decimal(12,2);	
declare ppd_HalfPrice decimal(12,2);	
declare ppd_StandardPrice decimal(12,2);
declare ppd_BalancePrice decimal(12,2);
declare ppd_ServiceFee decimal(12,2);	
declare ppd_otherFee1 decimal(12,2);	
declare ppd_otherFee2 decimal(12,2);	
declare ppd_otherFee3 decimal(12,2);	
declare ppd_otherFee4 decimal(12,2);	
declare ppd_otherFee5 decimal(12,2);	
declare ppd_otherFee6 decimal(12,2);	
declare ppd_StationID varchar(20);
declare ppd_Station varchar(50) CHARACTER SET utf8;	
declare ppd_Created datetime;	
declare ppd_CreatedBY varchar(30) CHARACTER SET utf8;
declare ppd_Updated datetime;	
declare ppd_UpdatedBY varchar(30) CHARACTER SET utf8;
declare ppd_IsPass tinyint; 
declare ppd_CheckInSite	tinyint;	
declare ppd_IsFromSite tinyint;	
declare ppd_StintSell tinyint;	
declare ppd_StintTime char(5);	


declare nnds_ID tinyint;
declare nnds_SiteName varchar(50) CHARACTER SET utf8;
declare nnds_SiteID varchar(20);
declare nnds_IsDock tinyint;
declare nnds_GetOnSite tinyint;
declare nnds_CheckInSite tinyint;
declare nnds_DepartureTime char(5);
declare nnds_CheckTicketWindow tinyint;
declare nnds_IsServiceFee tinyint;
declare nnds_ServiceFee decimal(12,2);
declare nnds_otherFee1 decimal(12,2);
declare nnds_otherFee2 decimal(12,2);
declare nnds_otherFee3 decimal(12,2);
declare nnds_otherFee4 decimal(12,2);
declare nnds_otherFee5 decimal(12,2);
declare nnds_otherFee6 decimal(12,2);
declare nnds_StintSell int;
declare nnds_StintTime char(5);

declare tmp_nds_ID tinyint;
declare tmp_nds_SiteName varchar(50) CHARACTER SET utf8;
declare tmp_nds_SiteID varchar(20);
declare tmp_nds_IsDock  tinyint;
declare tmp_nds_GetOnSite  tinyint;
declare tmp_nds_CheckInSite  tinyint;
declare tmp_nds_DepartureTime char(5);
declare tmp_nds_CheckTicketWindow tinyint;
declare tmp_nds_IsServiceFee tinyint;
declare tmp_nds_ServiceFee decimal(12,2);
declare tmp_nds_otherFee1 decimal(12,2);
declare tmp_nds_otherFee2 decimal(12,2);
declare tmp_nds_otherFee3 decimal(12,2);
declare tmp_nds_otherFee4 decimal(12,2);
declare tmp_nds_otherFee5 decimal(12,2);
declare tmp_nds_otherFee6 decimal(12,2);
declare tmp_nds_StintSell int;
declare tmp_nds_StintTime char(5);

Declare FromStationKilometer decimal(12,2);
Declare ToStationKilometer decimal(12,2);

declare ttpf_PriceProject varchar(20);
declare ttpf_BeginDate char(10);
declare ttpf_EndDate char(10);
declare ttpf_MoneyRenKil decimal(12,2);
declare TotalMoneyRenKil decimal(12,2);
Declare ttp_MoneyRenKil decimal(12,2);

declare nnrap_ISLineAdjust  tinyint;
declare nnrap_LineAdjust varchar(50);
declare nnrap_ISNoRunsAdjust tinyint;
declare nnrap_NoRunsAdjust varchar(30);
declare nnrap_DepartureSiteID varchar(20);
declare nnrap_DepartureSite varchar(50) CHARACTER SET utf8;
declare nnrap_GetToSiteID varchar(20);
declare nnrap_GetToSite varchar(50) CHARACTER SET utf8;
declare nnrap_ModelID varchar(20);
declare nnrap_ModelName varchar(50) CHARACTER SET utf8;
declare nnrap_BeginDate char(10);
declare nnrap_EndDate char(10);
declare nnrap_BeginTime char(5);
declare nnrap_EndTime char(5);
declare nnrap_ReferPrice decimal(12,2);
declare nnrap_PriceUpPercent decimal(12,2);
declare nnrap_RunPrice decimal(12,2);
declare nnrap_HalfPrice decimal(12,2);
declare nnrap_BalancePrice decimal(12,2);
declare nnrap_LinkAdjustPrice  tinyint;

declare ssfa_ISLineAdjust  tinyint;
declare ssfa_LineAdjust varchar(50);
declare ssfa_ISNoRunsAdjust tinyint;
declare ssfa_NoRunsAdjust varchar(30);
declare ssfa_DepartureSiteID varchar(20);
declare ssfa_DepartureSite varchar(50) CHARACTER SET utf8; 
declare ssfa_GetToSiteID varchar(20);
declare ssfa_GetToSite varchar(50) CHARACTER SET utf8;
declare ssfa_ModelID varchar(20);
declare ssfa_ModelName varchar(50) CHARACTER SET utf8;
declare ssfa_BeginDate char(10);
declare ssfa_EndDate char(10);
declare ssfa_BeginTime char(5);
declare ssfa_EndTime char(5);
declare ssfa_RunPrice decimal(12,2);
declare ssfa_LinkAdjustPrice  tinyint;

declare finished INTEGER DEFAULT 0;

declare  NUM1 INT;
declare  NUM2 INT;

Declare nnrap1 INT;
Declare nnrap2 INT;
Declare nnrap3 INT;
Declare ssfa1 INT;
Declare ssfa2 INT;
Declare ssfa3 INT;
Declare PricesCount INT;


declare recount int;

Declare unit varchar(50) CHARACTER SET utf8;

Declare li_tmp CURSOR FOR SELECT li_StationID, li_Station FROM tms_bd_LineInfo WHERE li_LineID IN(SELECT nri_LineID FROM tms_bd_NoRunsInfo WHERE nri_NoOfRunsID=NoOfRunsID);

Declare jy_tmp CURSOR FOR SELECT nri_BeginSiteID,nri_BeginSite,nri_EndSiteID,nri_EndSite,nri_DepartureTime,nri_CheckTicketWindow,nri_Allticket,nri_LoopDate,nri_StartDay,nri_RunDay,nri_StopDay,nri_IsStopOrCreat,nri_LineID,nri_NoOfRunsID,nri_StationDeal,nri_RunRegion,nri_DealCategory,nri_DealStyle FROM tms_bd_NoRunsInfo WHERE nri_NoOfRunsID=NoOfRunsID;	

Declare by_tmp CURSOR FOR SELECT bi_BusUnit, bi_BusTypeID, bi_BusType,bi_BusID,bi_BusNumber,bi_SeatS, bi_AddSeatS, bi_AllowHalfSeats FROM tms_bd_BusInfo WHERE bi_BusID=BusID;

-- Declare bm_tmp CURSOR FOR SELECT bm_AllowHalfSeats FROM tms_bd_BusModel WHERE bm_ModelID=ttml_BusModelID;

-- ---
Declare sr_tmp CURSOR FOR SELECT sr_ReserveSeatNO,sr_ReserveSeatS FROM tms_bd_ScheduleReserve WHERE sr_NoOfRunsID = NoOfRunsID AND sr_ModelID=ttml_BusModelID;


Declare nds_tmp CURSOR FOR SELECT nds_ID,nds_SiteName,nds_SiteID,nds_IsDock,nds_GetOnSite,nds_CheckInSite,nds_DepartureTime,nds_CheckTicketWindow,nds_IsServiceFee,nds_ServiceFee,nds_otherFee1,nds_otherFee2,nds_otherFee3,nds_otherFee4,nds_otherFee5,nds_otherFee6,nds_StintSell,nds_StintTime FROM tms_bd_NoRunsDockSite WHERE nds_NoOfRunsID=ttml_NoOfRunsID;

Declare tm_tmp CURSOR FOR SELECT nds_ID,nds_SiteName,nds_SiteID,nds_DepartureTime FROM tms_bd_NoRunsDockSite WHERE nds_NoOfRunsID=ttml_NoOfRunsID AND nds_ID >tmp_nds_ID AND nds_IsDock=1;

Declare jy1_tmp CURSOR FOR SELECT si_Kilometer FROM tms_bd_SectionInfo WHERE si_SiteNameID=ppd_FromStationID AND si_LineID=ttml_LineID;

Declare jy2_tmp CURSOR FOR SELECT si_Kilometer FROM tms_bd_SectionInfo WHERE si_SiteNameID=ppd_ReachStationID AND si_LineID=ttml_LineID;

Declare jy3_tmp CURSOR FOR SELECT tpf_MoneyRenKil FROM tms_bd_TicketPriceFactor WHERE NoOfRunsdate>=tpf_BeginDate AND NoOfRunsdate<=tpf_EndDate AND tpf_ModelID=ttml_BusModelID;

Declare nnrap1_tmp CURSOR FOR SELECT nrap_RunPrice,nrap_HalfPrice,nnrap_BalancePrice FROM tms_bd_NoRunsAdjustPrice	WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND  NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate AND nrap_NoRunsAdjust=ttml_NoOfRunsID AND nrap_ISNoRunsAdjust=0 AND nrap_ISLineAdjust=0 AND nrap_ModelID=ttml_BusModelID;
-- AND ttml_NoOfRunstime>=nrap_BeginTime and ttml_NoOfRunstime<=nrap_EndTime;
  
 

Declare nnrap2_tmp CURSOR FOR SELECT nrap_RunPrice,nrap_HalfPrice,nnrap_BalancePrice FROM tms_bd_NoRunsAdjustPrice	WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND  NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate AND nrap_NoRunsAdjust=ttml_NoOfRunsID AND nrap_ISNoRunsAdjust=1 AND nrap_ISLineAdjust=0 AND nrap_ModelID=ttml_BusModelID;
 -- AND ttml_NoOfRunstime>=nrap_BeginTime and -- ttml_NoOfRunstime<=nrap_EndTime;
 

Declare nnrap3_tmp CURSOR FOR SELECT nrap_RunPrice,nrap_HalfPrice,nnrap_BalancePrice FROM tms_bd_NoRunsAdjustPrice	WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND  NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate  AND nrap_ISNoRunsAdjust=0 AND nrap_ISLineAdjust=1 AND nrap_ModelID=ttml_BusModelID AND nrap_LineAdjust=ttml_LineID;
-- AND ttml_NoOfRunstime>=nrap_BeginTime and ttml_NoOfRunstime<=nrap_EndTime; 


 		
Declare ssfa1_tmp CURSOR FOR SELECT sfa_RunPrice FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate AND sfa_NoRunsAdjust=ttml_NoOfRunsID AND sfa_ISNoRunsAdjust=0 AND sfa_ISLineAdjust=0 AND sfa_ModelID=ttml_BusModelID;
-- AND ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime;

Declare ssfa2_tmp CURSOR FOR SELECT sfa_RunPrice FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate AND sfa_NoRunsAdjust=ttml_NoOfRunsID AND sfa_ISNoRunsAdjust=1 AND sfa_ISLineAdjust=0 AND sfa_ModelID=ttml_BusModelID;
-- AND ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime;

Declare ssfa3_tmp CURSOR FOR SELECT sfa_RunPrice FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate  AND sfa_ISNoRunsAdjust=0 AND sfa_ISLineAdjust=1 AND sfa_ModelID=ttml_BusModelID AND nrap_LineAdjust=ttml_LineID;
-- AND ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime ;


Declare CONTINUE HANDLER FOR NOT FOUND SET finished=1;

Start Transaction;
	SET intRetVal=0;
	SET ttml_NoOfRunsID=NoOfRunsID; 
	SET ttml_NoOfRunsdate=NoOfRunsdate;
	SET ttml_busID=busID;
-- ------	
	OPEN li_tmp;
	FETCH li_tmp INTO ttml_StationID, ttml_Station;
	CLOSE li_tmp;
-- --------
	
	OPEN jy_tmp;
	FETCH jy_tmp INTO ttml_BeginstationID, ttml_Beginstation, ttml_EndstationID, ttml_Endstation, ttml_NoOfRunstime, ttml_CheckTicketWindow, ttml_Allticket, LoopDate, StartDay, RunDay, StopDay, IsStopCreat,ttml_LineID,ttml_NoOfRunsID, ttml_StationDeal, ttml_RunRegion, ttml_DealCategory,ttml_DealStyle;
	CLOSE  jy_tmp;
-- -------
	SELECT COUNT(*) INTO longcount FROM tms_bd_ScheduleLong WHERE sl_NoOfRunsID=ttml_NoOfRunsID AND sl_BeginDate<=NoOfRunsdate AND sl_EndDate>=NoOfRunsdate;
	IF longcount>0 THEN
		SET ttml_StopRun=0;	
	ELSE
		SET ttml_StopRun=1;
	END IF;

	
-- -----
	
-- ------
	OPEN by_tmp;
	FETCH by_tmp INTO unit, ttml_BusModelID,ttml_BusModel,ttml_BusID,ttml_BusCard,ttml_Seats, ttml_AddSeats,ttml_LeaveHalfSeats;
	CLOSE by_tmp;

--	OPEN bm_tmp;
--	FETCH bm_tmp INTO ttml_LeaveHalfSeats;
--	CLOSE bm_tmp;

-- ------
	
	SET ttml_TotalSeats=IFNULL(ttml_Seats,0)+IFNULL(ttml_AddSeats,0);
	SET ttml_LeaveSeats=ttml_TotalSeats;
	SET ttml_LeaveHalfSeats=IFNULL(ttml_LeaveHalfSeats,0);
	SET ttml_SeatStatus=REPEAT('0',ttml_TotalSeats);
	SET ttml_FullSeats=0;
	SET ttml_HalfSeats=0;
	SET ttml_ReserveSeats=0;
-- -------------
	SELECT COUNT(*)	INTO recount FROM tms_bd_ScheduleReserve WHERE sr_NoOfRunsID = NoOfRunsID AND sr_ModelID=ttml_BusModelID;
	IF recount!=0 THEN
		OPEN sr_tmp;
		FETCH sr_tmp INTO SString,ttml_ReserveSeats;
		CLOSE sr_tmp;
		WHILE SString!='' or SString!=NULL DO
			SET L=INSTR(SString,',');
			SET Lsub=LEFT(SString,L-1);
			SET SString=SUBSTRING(SString,L+1);
			SET ttml_SeatStatus=INSERT(ttml_SeatStatus,Lsub,1,'2');
		END WHILE;
		SET ttml_LeaveSeats=ttml_LeaveSeats-ttml_ReserveSeats;
	END IF;
-- -----
	SET ttml_Created=NOW();
	SET ttml_Createdby=userBy;
	SET ttml_Updated=NOW();
	SET ttml_updatedby=userby;
	SET ttml_busID=IFNULL(ttml_busID,0);
	SET ttml_AllowSell='1';	
-- ---  
-- if开始
	IF ttml_StopRun!=0 and ttml_busID!=0 THEN
		UPDATE tms_bd_TicketMode SET tml_NoOfRunsID=ttml_NoOfRunsID,tml_LineID=ttml_LineID,tml_NoOfRunsdate=ttml_NoOfRunsdate,tml_NoOfRunstime=ttml_NoOfRunstime,tml_BeginstationID=ttml_BeginstationID,tml_EndstationID=ttml_EndstationID,tml_CheckTicketWindow=ttml_CheckTicketWindow,tml_Loads=ttml_Loads,tml_SeatStatus=ttml_SeatStatus,tml_TotalSeats=ttml_TotalSeats,tml_LeaveSeats=ttml_LeaveSeats,tml_HalfSeats=ttml_HalfSeats,tml_LeaveHalfSeats=ttml_LeaveHalfSeats,tml_ReserveSeats=ttml_ReserveSeats,tml_StopRun=ttml_StopRun,tml_Allticket=ttml_Allticket,tml_Orderno=ttml_Orderno,tml_StationID=ttml_StationID,tml_Station=ttml_Station,tml_Created=ttml_Created,tml_Createdby=ttml_Createdby,tml_Updated=ttml_Updated,tml_Updatedby=ttml_Updatedby,tml_BusModelID=ttml_BusModelID,tml_BusModel=ttml_BusModel,tml_BusID=ttml_BusID,tml_BusCard=ttml_BusCard,tml_FreeSeats=ttml_FreeSeats,tml_LeaveFreeSeats=ttml_LeaveFreeSeats,tml_StationDeal=ttml_StationDeal,tml_RunRegion=ttml_RunRegion,tml_DealCategory=ttml_DealCategory,tml_DealStyle=ttml_DealStyle WHERE tml_NoOfRunsID=ttml_NoOfRunsID AND tml_NoOfRunsdate=ttml_NoOfRunsdate ;


-- --------------
	OPEN nds_tmp;
	WHILE finished=0 DO

		FETCH nds_tmp INTO tmp_nds_ID,tmp_nds_SiteName,tmp_nds_SiteID,tmp_nds_IsDock,tmp_nds_GetOnSite,tmp_nds_CheckInSite,tmp_nds_DepartureTime,tmp_nds_CheckTicketWindow,tmp_nds_IsServiceFee,tmp_nds_ServiceFee,tmp_nds_otherFee1,tmp_nds_otherFee2,tmp_nds_otherFee3,tmp_nds_otherFee4,tmp_nds_otherFee5,tmp_nds_otherFee6,tmp_nds_StintSell,tmp_nds_StintTime;
		
		IF NOT finished THEN
			SET  ppd_CheckInSite=tmp_nds_CheckInSite;
			IF tmp_nds_GetOnSite=1 || tmp_nds_IsDock=1 THEN

				SET ppd_NoOfRunsID=ttml_NoOfRunsID; 
            			SET ppd_LineID=ttml_LineID;  
            			SET ppd_NoOfRunsdate=NoOfRunsdate;  
            			SET ppd_BeginStationTime=ttml_NoOfRunstime;   
            			SET ppd_BeginStationID=ttml_BeginstationID;   
            			SET ppd_BeginStation=ttml_Beginstation;   
            			SET ppd_FromStationID=tmp_nds_SiteID;   
            			SET ppd_FromStation=tmp_nds_SiteName;   
            			SET ppd_EndStationID=ttml_EndstationID;   
            			SET ppd_EndStation=ttml_Endstation;  
            			SET ppd_ServiceFee=tmp_nds_ServiceFee;  
            			SET ppd_otherFee1=tmp_nds_otherFee1;   
            			SET ppd_otherFee2=tmp_nds_otherFee2;   
            			SET ppd_otherFee3=tmp_nds_otherFee3;   
           			SET ppd_otherFee4=tmp_nds_otherFee4;   
            			SET ppd_otherFee5=tmp_nds_otherFee5;   
            			SET ppd_otherFee6=tmp_nds_otherFee6;   
            			SET ppd_StintSell=tmp_nds_StintSell;   
            			SET ppd_StintTime=tmp_nds_StintTime;   
            			SET ppd_IsPass=1; 
				IF ppd_FromStationID=ppd_BeginStationID THEN
					SET ppd_IsFromSite=1;
				ELSE
					SET ppd_IsFromSite=0;
				END IF;
				
				SELECT COUNT(*) INTO NUM1 FROM tms_bd_SectionInfo WHERE si_SiteNameID=ppd_FromStationID AND si_LineID=ttml_LineID; 

				IF NUM1=1 THEN
					OPEN jy1_tmp;
					FETCH jy1_tmp INTO FromStationKilometer;
					CLOSE jy1_tmp;	
			
				END IF;
--   -----------------------------				
				OPEN tm_tmp;
				WHILE finished=0 DO
					FETCH tm_tmp INTO nnds_ID,nnds_SiteName,nnds_SiteID,nnds_DepartureTime;

					IF NOT finished THEN
						SET ppd_ReachStationID=nnds_SiteID;   
            					SET ppd_ReachStation=nnds_SiteName; 
						SET ppd_StopStationTime=nnds_DepartureTime;

						SELECT COUNT(*) INTO NUM2 FROM tms_bd_SectionInfo WHERE si_SiteNameID=ppd_ReachStationID AND si_LineID=ttml_LineID; 
						IF NUM2=1 THEN
							OPEN jy2_tmp;
							FETCH jy2_tmp INTO ToStationKilometer;
							CLOSE jy2_tmp;
						END IF;

						SET ppd_Distance=ToStationKilometer-FromStationKilometer;
						SET TotalMoneyRenKil=0; 
						
						OPEN jy3_tmp;
						WHILE finished=0 DO
							FETCH jy3_tmp INTO ttp_MoneyRenKil;
							IF NOT finished THEN
								SET TotalMoneyRenKil=TotalMoneyRenKil+ttp_MoneyRenKil;
							END IF;
						END WHILE;
						CLOSE jy3_tmp;
						SET finished=0;
						
						SET ppd_StandardPrice=TotalMoneyRenKil*ppd_Distance;
						SET ppd_FullPrice=ppd_StandardPrice; 
						SET ppd_HalfPrice=round(ppd_FullPrice*0.5);
						
						
						
  						SELECT COUNT(*) INTO nnrap1 FROM tms_bd_NoRunsAdjustPrice WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND  NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate AND nrap_NoRunsAdjust=ttml_NoOfRunsID AND nrap_ISNoRunsAdjust=0 AND nrap_ISLineAdjust=0 AND nrap_ModelID=ttml_BusModelID AND nrap_Unit=unit; 
-- AND ttml_NoOfRunstime>=nrap_BeginTime AND ttml_NoOfRunstime<=nrap_EndTime; 

						SELECT COUNT(*) INTO nnrap2 FROM tms_bd_NoRunsAdjustPrice WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND  NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate AND nrap_NoRunsAdjust=ttml_NoOfRunsID AND nrap_ISNoRunsAdjust=1 AND nrap_ISLineAdjust=0 AND nrap_ModelID=ttml_BusModelID;
 -- AND ttml_NoOfRunstime>=nrap_BeginTime AND ttml_NoOfRunstime<=nrap_EndTime; 

						SELECT COUNT(*) INTO nnrap3 FROM tms_bd_NoRunsAdjustPrice WHERE nrap_DepartureSiteID=ppd_FromStationID AND nrap_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=nrap_BeginDate AND NoOfRunsdate<=nrap_EndDate AND nrap_ISNoRunsAdjust=0 AND nrap_ISLineAdjust=1 AND nrap_ModelID=ttml_BusModelID AND nrap_LineAdjust=ttml_LineID;
-- AND ttml_NoOfRunstime>=nrap_BeginTime AND ttml_NoOfRunstime<=nrap_EndTime; 

 
						IF nnrap1=1 THEN
							OPEN nnrap1_tmp;
							FETCH nnrap1_tmp INTO nnrap_RunPrice, nnrap_HalfPrice,nnrap_BalancePrice;
							SET ppd_FullPrice=nnrap_RunPrice; 
							SET ppd_HalfPrice=nnrap_HalfPrice;
							SET ppd_BalancePrice=nnrap_BalancePrice;
							CLOSE nnrap1_tmp;
						ELSE
							IF nnrap2=1 THEN
								OPEN nnrap2_tmp;
								FETCH nnrap2_tmp INTO nnrap_RunPrice, nnrap_HalfPrice,nnrap_BalancePrice;
								SET ppd_FullPrice=nnrap_RunPrice; 
								SET ppd_HalfPrice=nnrap_HalfPrice;
								SET ppd_BalancePrice=nnrap_BalancePrice;
								CLOSE nnrap2_tmp;
							ELSE
								IF nnrap3=1 THEN
									OPEN nnrap3_tmp;
									FETCH nnrap3_tmp INTO nnrap_RunPrice, nnrap_HalfPrice,nnrap_BalancePrice;
									SET ppd_FullPrice=nnrap_RunPrice; 
									SET ppd_HalfPrice=nnrap_HalfPrice;
									SET ppd_BalancePrice=nnrap_BalancePrice;
									CLOSE nnrap3_tmp;
								END IF;
							END IF;
						END IF; 


						SELECT COUNT(*) INTO ssfa1 FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate AND sfa_NoRunsAdjust=ttml_NoOfRunsID AND sfa_ISNoRunsAdjust=0 AND sfa_ISLineAdjust=0 AND sfa_ModelID=ttml_BusModelID AND sfa_Unit=unit;
-- ttml_BusModelID ;
-- ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime AND

						SELECT COUNT(*) INTO ssfa2 FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate AND sfa_NoRunsAdjust=ttml_NoOfRunsID AND sfa_ISNoRunsAdjust=1 AND sfa_ISLineAdjust=0 AND sfa_ModelID=ttml_BusModelID;
-- ttml_BusModelID ;
-- ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime AND

						SELECT COUNT(*) INTO ssfa3 FROM tms_bd_ServiceFeeAdjust WHERE sfa_DepartureSiteID=ppd_FromStationID AND sfa_GetToSiteID=ppd_ReachStationID AND NoOfRunsdate>=sfa_BeginDate AND NoOfRunsdate<=sfa_EndDate AND sfa_ISNoRunsAdjust=0 AND sfa_ISLineAdjust=1 AND sfa_ModelID=ttml_BusModelID AND sfa_LineAdjust=ttml_LineID; 
-- ttml_LineID;
-- ttml_BusModelID ;
-- ttml_NoOfRunstime>=sfa_BeginTime AND ttml_NoOfRunstime<=sfa_EndTime AND
			
						IF ssfa1=1 THEN
							OPEN ssfa1_tmp;
							FETCH ssfa1_tmp INTO ssfa_RunPrice;
							SET ppd_ServiceFee=ssfa_RunPrice; 
							CLOSE ssfa1_tmp;
						ELSE
							IF ssfa2=1 THEN
								OPEN ssfa2_tmp;
								FETCH ssfa2_tmp INTO ssfa_RunPrice;
								SET ppd_ServiceFee=ssfa_RunPrice; 
								CLOSE ssfa2_tmp;
							ELSE
								IF ssfa3=1 THEN
									OPEN ssfa3_tmp;
									FETCH ssfa3_tmp INTO ssfa_RunPrice;
									SET ppd_ServiceFee=ssfa_RunPrice; 
									CLOSE ssfa3_tmp;
								END IF;	
							END IF;
						END IF;


						SET ppd_StationID=ttml_StationID; 
            					SET ppd_Station=ttml_Station;   
            					SET ppd_Created=NOW();  
            					SET ppd_CreatedBY=userBY;   
            					SET ppd_Updated=NOW();   
            					SET ppd_UpdatedBY=userBY; 
						
						SELECT COUNT(*) INTO PricesCount FROM tms_bd_PriceDetail WHERE pd_NoOfRunsID=ppd_NoOfRunsID AND pd_NoOfRunsdate=ppd_NoOfRunsdate AND pd_FromStationID=ppd_FromStationID AND pd_ReachStationID=ppd_ReachStationID;
						IF PricesCount>0 THEN
							UPDATE tms_bd_PriceDetail SET pd_NoOfRunsID=ppd_NoOfRunsID,pd_LineID=ppd_LineID,pd_NoOfRunsdate=ppd_NoOfRunsdate, pd_BeginStationTime=ppd_BeginStationTime,pd_StopStationTime=ppd_StopStationTime,pd_Distance=ppd_Distance,pd_BeginStationID=ppd_BeginStationID,pd_BeginStation=ppd_BeginStation,pd_FromStationID=ppd_FromStationID,pd_FromStation=ppd_FromStation,pd_ReachStationID=ppd_ReachStationID,pd_ReachStation=ppd_ReachStation,pd_EndStationID=ppd_EndStationID, pd_EndStation=ppd_EndStation,pd_FullPrice=ppd_FullPrice,pd_HalfPrice=ppd_HalfPrice,pd_StandardPrice=ppd_StandardPrice,pd_BalancePrice=ppd_BalancePrice,pd_ServiceFee=ppd_ServiceFee,pd_otherFee1=ppd_otherFee1,pd_otherFee2=ppd_otherFee2,pd_otherFee3=ppd_otherFee3,pd_otherFee4=ppd_otherFee4,pd_otherFee5=ppd_otherFee5,pd_otherFee6=ppd_otherFee6,pd_StationID=ppd_StationID,pd_Station=ppd_Station,pd_Created=ppd_Created,pd_CreatedBY=ppd_CreatedBY,pd_Updated=ppd_Updated,pd_UpdatedBY=ppd_UpdatedBY,pd_IsPass=ppd_IsPass,pd_CheckInSite=ppd_CheckInSite,pd_IsFromSite=ppd_IsFromSite,pd_StintSell=ppd_StintSell,pd_StintTime=ppd_StintTime WHERE pd_NoOfRunsID=ppd_NoOfRunsID AND pd_NoOfRunsdate=ppd_NoOfRunsdate AND pd_FromStationID=ppd_FromStationID AND pd_ReachStationID=ppd_ReachStationID;
						ELSE
							INSERT INTO tms_bd_PriceDetail (pd_NoOfRunsID,pd_LineID,pd_NoOfRunsdate,pd_BeginStationTime,pd_StopStationTime,pd_Distance,pd_BeginStationID,pd_BeginStation,pd_FromStationID,pd_FromStation,pd_ReachStationID,pd_ReachStation,pd_EndStationID,pd_EndStation,pd_FullPrice,pd_HalfPrice,pd_StandardPrice,pd_BalancePrice,pd_ServiceFee,pd_otherFee1,pd_otherFee2,pd_otherFee3,pd_otherFee4,pd_otherFee5,pd_otherFee6,pd_StationID,pd_Station,pd_Created,pd_CreatedBY,pd_Updated,pd_UpdatedBY,pd_IsPass,pd_CheckInSite,pd_IsFromSite,pd_StintSell,pd_StintTime) VALUES (ppd_NoOfRunsID,ppd_LineID,ppd_NoOfRunsdate,ppd_BeginStationTime,ppd_StopStationTime,ppd_Distance,ppd_BeginStationID,ppd_BeginStation,ppd_FromStationID,ppd_FromStation,ppd_ReachStationID,ppd_ReachStation,ppd_EndStationID,ppd_EndStation,ppd_FullPrice,ppd_HalfPrice,ppd_StandardPrice,ppd_BalancePrice,ppd_ServiceFee,ppd_otherFee1,ppd_otherFee2,ppd_otherFee3,ppd_otherFee4,ppd_otherFee5,ppd_otherFee6,ppd_StationID,ppd_Station,ppd_Created,ppd_CreatedBY,ppd_Updated,ppd_UpdatedBY,ppd_IsPass,ppd_CheckInSite,ppd_IsFromSite,ppd_StintSell,ppd_StintTime);  
						END IF;


					END IF;
				END WHILE;
				CLOSE tm_tmp;
				SET finished=0;


			END IF;		

		END IF;


	END WHILE;
	CLOSE nds_tmp;  
	
	SET intRetVal=1;

--	ESLE
--		SET intRetVal=0;	
	END IF; -- if结束
commit;
END
