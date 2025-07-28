; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2621 () Bool)

(assert start!2621)

(declare-fun b!14325 () Bool)

(declare-fun e!8107 () Bool)

(declare-fun e!8108 () Bool)

(assert (=> b!14325 (= e!8107 e!8108)))

(declare-fun res!11073 () Bool)

(assert (=> b!14325 (=> (not res!11073) (not e!8108))))

(declare-fun i!142 () (_ BitVec 32))

(declare-datatypes ((Unit!1552 0))(
  ( (Unit!1553) )
))
(declare-datatypes ((array!1118 0))(
  ( (array!1119 (arr!493 (Array (_ BitVec 32) (_ BitVec 32))) (size!493 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!374 0))(
  ( (tuple4!375 (_1!381 Unit!1552) (_2!381 array!1118) (_3!318 (_ BitVec 32)) (_4!187 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!7607 () tuple4!374)

(declare-fun lt!7606 () (_ FloatingPoint 11 53))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!14325 (= res!11073 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7606) (fp.lt lt!7606 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!493 (_2!381 lt!7607)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14325 (= lt!7606 (fp.sub roundNearestTiesToEven (_4!187 lt!7607) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!187 lt!7607) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!187 lt!7607) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!187 lt!7607) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!187 lt!7607) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!8104 () tuple4!374)

(assert (=> b!14325 (= lt!7607 e!8104)))

(declare-fun c!1838 () Bool)

(assert (=> b!14325 (= c!1838 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!7605 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!1120 0))(
  ( (array!1121 (arr!494 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!494 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1120)

(assert (=> b!14325 (= lt!7605 (select (arr!494 q!31) jz!20))))

(declare-fun lt!7608 () array!1118)

(assert (=> b!14325 (= lt!7608 (array!1119 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!14326 () Bool)

(declare-fun res!11074 () Bool)

(assert (=> b!14326 (=> (not res!11074) (not e!8108))))

(declare-fun iq!76 () array!1118)

(declare-fun iqInv!0 (array!1118) Bool)

(assert (=> b!14326 (= res!11074 (iqInv!0 iq!76))))

(declare-fun b!14327 () Bool)

(declare-fun Unit!1554 () Unit!1552)

(assert (=> b!14327 (= e!8104 (tuple4!375 Unit!1554 lt!7608 jz!20 lt!7605))))

(declare-fun b!14328 () Bool)

(declare-fun e!8105 () Bool)

(declare-fun carry!33 () (_ BitVec 32))

(declare-fun lt!7604 () (_ BitVec 32))

(assert (=> b!14328 (= e!8105 (and (not (= carry!33 #b00000000000000000000000000000000)) (not (= #b00000000000000000000000000000000 (bvand lt!7604 #b10000000000000000000000000000000))) (not (= #b00000000000000000000000000000000 (bvand (bvsub #b00000000111111111111111111111111 lt!7604) #b10000000000000000000000000000000)))))))

(declare-fun b!14329 () Bool)

(assert (=> b!14329 (= e!8108 e!8105)))

(declare-fun res!11076 () Bool)

(assert (=> b!14329 (=> (not res!11076) (not e!8105))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!14329 (= res!11076 (QInt!0 lt!7604))))

(assert (=> b!14329 (= lt!7604 (select (arr!493 iq!76) i!142))))

(declare-fun b!14330 () Bool)

(declare-fun res!11071 () Bool)

(assert (=> b!14330 (=> (not res!11071) (not e!8108))))

(assert (=> b!14330 (= res!11071 (and (bvsge (select (arr!493 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun res!11072 () Bool)

(assert (=> start!2621 (=> (not res!11072) (not e!8107))))

(assert (=> start!2621 (= res!11072 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2621 e!8107))

(assert (=> start!2621 true))

(declare-fun array_inv!441 (array!1120) Bool)

(assert (=> start!2621 (array_inv!441 q!31)))

(declare-fun array_inv!442 (array!1118) Bool)

(assert (=> start!2621 (array_inv!442 iq!76)))

(declare-fun b!14331 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1120 array!1118 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!374)

(assert (=> b!14331 (= e!8104 (computeModuloWhile!0 jz!20 q!31 lt!7608 jz!20 lt!7605))))

(declare-fun b!14332 () Bool)

(declare-fun res!11075 () Bool)

(assert (=> b!14332 (=> (not res!11075) (not e!8107))))

(declare-fun qInv!0 (array!1120) Bool)

(assert (=> b!14332 (= res!11075 (qInv!0 q!31))))

(assert (= (and start!2621 res!11072) b!14332))

(assert (= (and b!14332 res!11075) b!14325))

(assert (= (and b!14325 c!1838) b!14331))

(assert (= (and b!14325 (not c!1838)) b!14327))

(assert (= (and b!14325 res!11073) b!14326))

(assert (= (and b!14326 res!11074) b!14330))

(assert (= (and b!14330 res!11071) b!14329))

(assert (= (and b!14329 res!11076) b!14328))

(declare-fun m!21885 () Bool)

(assert (=> b!14326 m!21885))

(declare-fun m!21887 () Bool)

(assert (=> b!14332 m!21887))

(declare-fun m!21889 () Bool)

(assert (=> b!14325 m!21889))

(declare-fun m!21891 () Bool)

(assert (=> b!14325 m!21891))

(declare-fun m!21893 () Bool)

(assert (=> b!14329 m!21893))

(declare-fun m!21895 () Bool)

(assert (=> b!14329 m!21895))

(declare-fun m!21897 () Bool)

(assert (=> b!14330 m!21897))

(declare-fun m!21899 () Bool)

(assert (=> start!2621 m!21899))

(declare-fun m!21901 () Bool)

(assert (=> start!2621 m!21901))

(declare-fun m!21903 () Bool)

(assert (=> b!14331 m!21903))

(check-sat (not b!14331) (not b!14326) (not b!14329) (not b!14332) (not start!2621))
(check-sat)
(get-model)

(declare-fun d!5831 () Bool)

(assert (=> d!5831 (= (array_inv!441 q!31) (bvsge (size!494 q!31) #b00000000000000000000000000000000))))

(assert (=> start!2621 d!5831))

(declare-fun d!5833 () Bool)

(assert (=> d!5833 (= (array_inv!442 iq!76) (bvsge (size!493 iq!76) #b00000000000000000000000000000000))))

(assert (=> start!2621 d!5833))

(declare-fun d!5835 () Bool)

(assert (=> d!5835 (= (QInt!0 lt!7604) (and (bvsle #b00000000000000000000000000000000 lt!7604) (bvsle lt!7604 #b00000000111111111111111111111111)))))

(assert (=> b!14329 d!5835))

(declare-fun b!14345 () Bool)

(declare-fun lt!7619 () (_ BitVec 32))

(declare-fun lt!7622 () (_ FloatingPoint 11 53))

(declare-fun lt!7620 () array!1118)

(declare-fun e!8117 () tuple4!374)

(assert (=> b!14345 (= e!8117 (computeModuloWhile!0 jz!20 q!31 lt!7620 lt!7619 lt!7622))))

(declare-fun b!14346 () Bool)

(declare-fun Unit!1555 () Unit!1552)

(assert (=> b!14346 (= e!8117 (tuple4!375 Unit!1555 lt!7620 lt!7619 lt!7622))))

(declare-fun d!5837 () Bool)

(declare-fun e!8115 () Bool)

(assert (=> d!5837 e!8115))

(declare-fun res!11085 () Bool)

(assert (=> d!5837 (=> (not res!11085) (not e!8115))))

(declare-fun lt!7621 () tuple4!374)

(assert (=> d!5837 (= res!11085 (and true true (bvsle #b00000000000000000000000000000000 (_3!318 lt!7621)) (bvsle (_3!318 lt!7621) jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!187 lt!7621)) (fp.leq (_4!187 lt!7621) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!5837 (= lt!7621 e!8117)))

(declare-fun c!1841 () Bool)

(assert (=> d!5837 (= c!1841 (bvsgt lt!7619 #b00000000000000000000000000000000))))

(assert (=> d!5837 (= lt!7619 (bvsub jz!20 #b00000000000000000000000000000001))))

(declare-fun lt!7623 () (_ FloatingPoint 11 53))

(assert (=> d!5837 (= lt!7622 (fp.add roundNearestTiesToEven (select (arr!494 q!31) (bvsub jz!20 #b00000000000000000000000000000001)) lt!7623))))

(assert (=> d!5837 (= lt!7620 (array!1119 (store (arr!493 lt!7608) (bvsub jz!20 jz!20) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!7605 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7623))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!7605 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7623)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!7605 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7623)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!7605 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7623))))))) (size!493 lt!7608)))))

(assert (=> d!5837 (= lt!7623 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7605)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7605) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7605) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7605)))))))))

(declare-fun e!8116 () Bool)

(assert (=> d!5837 e!8116))

(declare-fun res!11087 () Bool)

(assert (=> d!5837 (=> (not res!11087) (not e!8116))))

(assert (=> d!5837 (= res!11087 (and (bvsle #b00000000000000000000000000000000 jz!20) (bvsle jz!20 jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7605) (fp.leq lt!7605 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!5837 (= (computeModuloWhile!0 jz!20 q!31 lt!7608 jz!20 lt!7605) lt!7621)))

(declare-fun b!14347 () Bool)

(assert (=> b!14347 (= e!8116 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun b!14348 () Bool)

(declare-fun res!11086 () Bool)

(assert (=> b!14348 (=> (not res!11086) (not e!8116))))

(assert (=> b!14348 (= res!11086 (iqInv!0 lt!7608))))

(declare-fun b!14349 () Bool)

(assert (=> b!14349 (= e!8115 (bvsle (_3!318 lt!7621) #b00000000000000000000000000000000))))

(declare-fun b!14350 () Bool)

(declare-fun res!11088 () Bool)

(assert (=> b!14350 (=> (not res!11088) (not e!8115))))

(assert (=> b!14350 (= res!11088 (iqInv!0 (_2!381 lt!7621)))))

(assert (= (and d!5837 res!11087) b!14348))

(assert (= (and b!14348 res!11086) b!14347))

(assert (= (and d!5837 c!1841) b!14345))

(assert (= (and d!5837 (not c!1841)) b!14346))

(assert (= (and d!5837 res!11085) b!14350))

(assert (= (and b!14350 res!11088) b!14349))

(declare-fun m!21905 () Bool)

(assert (=> b!14345 m!21905))

(declare-fun m!21907 () Bool)

(assert (=> d!5837 m!21907))

(declare-fun m!21909 () Bool)

(assert (=> d!5837 m!21909))

(declare-fun m!21911 () Bool)

(assert (=> b!14348 m!21911))

(declare-fun m!21913 () Bool)

(assert (=> b!14350 m!21913))

(assert (=> b!14331 d!5837))

(declare-fun d!5839 () Bool)

(declare-fun res!11091 () Bool)

(declare-fun e!8120 () Bool)

(assert (=> d!5839 (=> (not res!11091) (not e!8120))))

(assert (=> d!5839 (= res!11091 (= (size!493 iq!76) #b00000000000000000000000000010100))))

(assert (=> d!5839 (= (iqInv!0 iq!76) e!8120)))

(declare-fun b!14353 () Bool)

(declare-fun lambda!614 () Int)

(declare-fun all20Int!0 (array!1118 Int) Bool)

(assert (=> b!14353 (= e!8120 (all20Int!0 iq!76 lambda!614))))

(assert (= (and d!5839 res!11091) b!14353))

(declare-fun m!21915 () Bool)

(assert (=> b!14353 m!21915))

(assert (=> b!14326 d!5839))

(declare-fun d!5841 () Bool)

(declare-fun res!11094 () Bool)

(declare-fun e!8123 () Bool)

(assert (=> d!5841 (=> (not res!11094) (not e!8123))))

(assert (=> d!5841 (= res!11094 (= (size!494 q!31) #b00000000000000000000000000010100))))

(assert (=> d!5841 (= (qInv!0 q!31) e!8123)))

(declare-fun b!14356 () Bool)

(declare-fun lambda!617 () Int)

(declare-fun all20!0 (array!1120 Int) Bool)

(assert (=> b!14356 (= e!8123 (all20!0 q!31 lambda!617))))

(assert (= (and d!5841 res!11094) b!14356))

(declare-fun m!21917 () Bool)

(assert (=> b!14356 m!21917))

(assert (=> b!14332 d!5841))

(check-sat (not b!14348) (not b!14356) (not b!14345) (not b!14350) (not b!14353))
(check-sat)
