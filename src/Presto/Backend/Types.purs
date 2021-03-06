{-
 Copyright (c) 2012-2017 "JUSPAY Technologies"
 JUSPAY Technologies Pvt. Ltd. [https://www.juspay.in]
 This file is part of JUSPAY Platform.
 JUSPAY Platform is free software: you can redistribute it and/or modify
 it for only educational purposes under the terms of the GNU Affero General
 Public License (GNU AGPL) as published by the Free Software Foundation,
 either version 3 of the License, or (at your option) any later version.
 For Enterprise/Commerical licenses, contact <info@juspay.in>.
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  The end user will
 be liable for all damages without limitation, which is caused by the
 ABUSE of the LICENSED SOFTWARE and shall INDEMNIFY JUSPAY for such
 damages, claims, cost, including reasonable attorney fee claimed on Juspay.
 The end user has NO right to claim any indemnification based on its use
 of Licensed Software. See the GNU Affero General Public License for more details.
 You should have received a copy of the GNU Affero General Public License
 along with this program. If not, see <https://www.gnu.org/licenses/agpl.html>.
-}

module Presto.Backend.Types where

import Control.Monad.Aff (Aff)
import Control.Monad.Aff.AVar (AVAR)
import Control.Monad.Aff.Console (CONSOLE)
import Control.Monad.Eff.Exception (EXCEPTION)
import Cache (CACHE)
import Presto.Core.Types.API (URL)
import Presto.Core.Types.App (NETWORK)
import Sequelize.Types (SEQUELIZE)
import Node.FS (FS)
import Node.Process (PROCESS)
import Data.UUID (GENUUID)
import Control.Monad.Eff.Now (NOW)

type BackendEffects eff = (avar :: AVAR, exception :: EXCEPTION, network :: NETWORK, console :: CONSOLE, sequelize :: SEQUELIZE, cache :: CACHE, fs :: FS, process :: PROCESS, uuid :: GENUUID, now :: NOW | eff)
type BackendAff eff = Aff (BackendEffects eff)

type ZipkinConfig =
  { enable :: String
  , redis :: String
  , postgres :: String
  , axios :: String
  , url :: URL
  , serviceName :: String
  }
