; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2761 () Bool)

(assert start!2761)

(declare-fun b!15147 () Bool)

(declare-fun e!8324 () Bool)

(declare-fun e!8327 () Bool)

(assert (=> b!15147 (= e!8324 e!8327)))

(declare-fun res!11785 () Bool)

(assert (=> b!15147 (=> (not res!11785) (not e!8327))))

(declare-fun lt!7796 () (_ BitVec 32))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15147 (= res!11785 (QInt!0 lt!7796))))

(declare-datatypes ((array!1122 0))(
  ( (array!1123 (arr!491 (Array (_ BitVec 32) (_ BitVec 32))) (size!491 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1122)

(declare-fun i!142 () (_ BitVec 32))

(assert (=> b!15147 (= lt!7796 (select (arr!491 iq!76) i!142))))

(declare-fun res!11790 () Bool)

(declare-fun e!8323 () Bool)

(assert (=> start!2761 (=> (not res!11790) (not e!8323))))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> start!2761 (= res!11790 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2761 e!8323))

(assert (=> start!2761 true))

(declare-datatypes ((array!1124 0))(
  ( (array!1125 (arr!492 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!492 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1124)

(declare-fun array_inv!439 (array!1124) Bool)

(assert (=> start!2761 (array_inv!439 q!31)))

(declare-fun array_inv!440 (array!1122) Bool)

(assert (=> start!2761 (array_inv!440 iq!76)))

(declare-datatypes ((Unit!1594 0))(
  ( (Unit!1595) )
))
(declare-datatypes ((tuple4!372 0))(
  ( (tuple4!373 (_1!385 Unit!1594) (_2!385 array!1122) (_3!317 (_ BitVec 32)) (_4!186 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8328 () tuple4!372)

(declare-fun lt!7792 () (_ FloatingPoint 11 53))

(declare-fun lt!7794 () array!1122)

(declare-fun b!15148 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1124 array!1122 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!372)

(assert (=> b!15148 (= e!8328 (computeModuloWhile!0 jz!20 q!31 lt!7794 jz!20 lt!7792))))

(declare-fun b!15149 () Bool)

(assert (=> b!15149 (= e!8323 e!8324)))

(declare-fun res!11789 () Bool)

(assert (=> b!15149 (=> (not res!11789) (not e!8324))))

(declare-fun lt!7793 () (_ FloatingPoint 11 53))

(declare-fun lt!7795 () tuple4!372)

(assert (=> b!15149 (= res!11789 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7793) (fp.lt lt!7793 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!491 (_2!385 lt!7795)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15149 (= lt!7793 (fp.sub roundNearestTiesToEven (_4!186 lt!7795) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!186 lt!7795) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!186 lt!7795) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!186 lt!7795) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!186 lt!7795) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!15149 (= lt!7795 e!8328)))

(declare-fun c!1892 () Bool)

(assert (=> b!15149 (= c!1892 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!15149 (= lt!7792 (select (arr!492 q!31) jz!20))))

(assert (=> b!15149 (= lt!7794 (array!1123 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15150 () Bool)

(declare-fun res!11787 () Bool)

(assert (=> b!15150 (=> (not res!11787) (not e!8324))))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!15150 (= res!11787 (and (bvsge (select (arr!491 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!15151 () Bool)

(declare-fun res!11786 () Bool)

(assert (=> b!15151 (=> (not res!11786) (not e!8324))))

(declare-fun iqInv!0 (array!1122) Bool)

(assert (=> b!15151 (= res!11786 (iqInv!0 iq!76))))

(declare-fun b!15152 () Bool)

(assert (=> b!15152 (= e!8327 (and (= carry!33 #b00000000000000000000000000000000) (not (= lt!7796 #b00000000000000000000000000000000)) (not (= #b00000000000000000000000000000000 (bvand lt!7796 #b10000000000000000000000000000000))) (not (= #b00000000000000000000000000000000 (bvand (bvsub #b00000001000000000000000000000000 lt!7796) #b10000000000000000000000000000000)))))))

(declare-fun b!15153 () Bool)

(declare-fun res!11788 () Bool)

(assert (=> b!15153 (=> (not res!11788) (not e!8323))))

(declare-fun qInv!0 (array!1124) Bool)

(assert (=> b!15153 (= res!11788 (qInv!0 q!31))))

(declare-fun b!15154 () Bool)

(declare-fun Unit!1596 () Unit!1594)

(assert (=> b!15154 (= e!8328 (tuple4!373 Unit!1596 lt!7794 jz!20 lt!7792))))

(assert (= (and start!2761 res!11790) b!15153))

(assert (= (and b!15153 res!11788) b!15149))

(assert (= (and b!15149 c!1892) b!15148))

(assert (= (and b!15149 (not c!1892)) b!15154))

(assert (= (and b!15149 res!11789) b!15151))

(assert (= (and b!15151 res!11786) b!15150))

(assert (= (and b!15150 res!11787) b!15147))

(assert (= (and b!15147 res!11785) b!15152))

(declare-fun m!24695 () Bool)

(assert (=> b!15150 m!24695))

(declare-fun m!24697 () Bool)

(assert (=> b!15153 m!24697))

(declare-fun m!24699 () Bool)

(assert (=> b!15148 m!24699))

(declare-fun m!24701 () Bool)

(assert (=> b!15149 m!24701))

(declare-fun m!24703 () Bool)

(assert (=> b!15149 m!24703))

(declare-fun m!24705 () Bool)

(assert (=> b!15147 m!24705))

(declare-fun m!24707 () Bool)

(assert (=> b!15147 m!24707))

(declare-fun m!24709 () Bool)

(assert (=> start!2761 m!24709))

(declare-fun m!24711 () Bool)

(assert (=> start!2761 m!24711))

(declare-fun m!24713 () Bool)

(assert (=> b!15151 m!24713))

(push 1)

(assert (not start!2761))

(assert (not b!15151))

(assert (not b!15147))

(assert (not b!15153))

(assert (not b!15148))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7570 () Bool)

(assert (=> d!7570 (= (array_inv!439 q!31) (bvsge (size!492 q!31) #b00000000000000000000000000000000))))

(assert (=> start!2761 d!7570))

(declare-fun d!7572 () Bool)

(assert (=> d!7572 (= (array_inv!440 iq!76) (bvsge (size!491 iq!76) #b00000000000000000000000000000000))))

(assert (=> start!2761 d!7572))

(declare-fun d!7574 () Bool)

(declare-fun res!11793 () Bool)

(declare-fun e!8331 () Bool)

(assert (=> d!7574 (=> (not res!11793) (not e!8331))))

(assert (=> d!7574 (= res!11793 (= (size!491 iq!76) #b00000000000000000000000000010100))))

(assert (=> d!7574 (= (iqInv!0 iq!76) e!8331)))

(declare-fun b!15157 () Bool)

(declare-fun lambda!678 () Int)

(declare-fun all20Int!0 (array!1122 Int) Bool)

(assert (=> b!15157 (= e!8331 (all20Int!0 iq!76 lambda!678))))

(assert (= (and d!7574 res!11793) b!15157))

(declare-fun m!24715 () Bool)

(assert (=> b!15157 m!24715))

(assert (=> b!15151 d!7574))

(declare-fun b!15170 () Bool)

(declare-fun res!11804 () Bool)

(declare-fun e!8339 () Bool)

(assert (=> b!15170 (=> (not res!11804) (not e!8339))))

(assert (=> b!15170 (= res!11804 (iqInv!0 lt!7794))))

(declare-fun e!8338 () tuple4!372)

(declare-fun lt!7808 () array!1122)

(declare-fun lt!7807 () (_ FloatingPoint 11 53))

(declare-fun lt!7810 () (_ BitVec 32))

(declare-fun b!15171 () Bool)

(assert (=> b!15171 (= e!8338 (computeModuloWhile!0 jz!20 q!31 lt!7808 lt!7810 lt!7807))))

(declare-fun b!15172 () Bool)

(declare-fun res!11803 () Bool)

(declare-fun e!8340 () Bool)

(assert (=> b!15172 (=> (not res!11803) (not e!8340))))

(declare-fun lt!7809 () tuple4!372)

(assert (=> b!15172 (= res!11803 (iqInv!0 (_2!385 lt!7809)))))

(declare-fun d!7576 () Bool)

(assert (=> d!7576 e!8340))

(declare-fun res!11802 () Bool)

(assert (=> d!7576 (=> (not res!11802) (not e!8340))))

(assert (=> d!7576 (= res!11802 (and true true (bvsle #b00000000000000000000000000000000 (_3!317 lt!7809)) (bvsle (_3!317 lt!7809) jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!186 lt!7809)) (fp.leq (_4!186 lt!7809) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!7576 (= lt!7809 e!8338)))

(declare-fun c!1895 () Bool)

(assert (=> d!7576 (= c!1895 (bvsgt lt!7810 #b00000000000000000000000000000000))))

(assert (=> d!7576 (= lt!7810 (bvsub jz!20 #b00000000000000000000000000000001))))

(declare-fun lt!7811 () (_ FloatingPoint 11 53))

(assert (=> d!7576 (= lt!7807 (fp.add roundNearestTiesToEven (select (arr!492 q!31) (bvsub jz!20 #b00000000000000000000000000000001)) lt!7811))))

(assert (=> d!7576 (= lt!7808 (array!1123 (store (arr!491 lt!7794) (bvsub jz!20 jz!20) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!7792 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7811))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!7792 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7811)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!7792 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7811)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!7792 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!7811))))))) (size!491 lt!7794)))))

(assert (=> d!7576 (= lt!7811 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7792)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7792) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7792) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!7792)))))))))

(assert (=> d!7576 e!8339))

(declare-fun res!11805 () Bool)

(assert (=> d!7576 (=> (not res!11805) (not e!8339))))

(assert (=> d!7576 (= res!11805 (and (bvsle #b00000000000000000000000000000000 jz!20) (bvsle jz!20 jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7792) (fp.leq lt!7792 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!7576 (= (computeModuloWhile!0 jz!20 q!31 lt!7794 jz!20 lt!7792) lt!7809)))

(declare-fun b!15173 () Bool)

(declare-fun Unit!1597 () Unit!1594)

(assert (=> b!15173 (= e!8338 (tuple4!373 Unit!1597 lt!7808 lt!7810 lt!7807))))

(declare-fun b!15174 () Bool)

(assert (=> b!15174 (= e!8340 (bvsle (_3!317 lt!7809) #b00000000000000000000000000000000))))

(declare-fun b!15175 () Bool)

(assert (=> b!15175 (= e!8339 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (= (and d!7576 res!11805) b!15170))

(assert (= (and b!15170 res!11804) b!15175))

(assert (= (and d!7576 c!1895) b!15171))

(assert (= (and d!7576 (not c!1895)) b!15173))

(assert (= (and d!7576 res!11802) b!15172))

(assert (= (and b!15172 res!11803) b!15174))

(declare-fun m!24717 () Bool)

(assert (=> b!15170 m!24717))

(declare-fun m!24719 () Bool)

(assert (=> b!15171 m!24719))

(declare-fun m!24721 () Bool)

(assert (=> b!15172 m!24721))

(declare-fun m!24723 () Bool)

(assert (=> d!7576 m!24723))

(declare-fun m!24725 () Bool)

(assert (=> d!7576 m!24725))

(assert (=> b!15148 d!7576))

(declare-fun d!7578 () Bool)

(declare-fun res!11808 () Bool)

(declare-fun e!8343 () Bool)

(assert (=> d!7578 (=> (not res!11808) (not e!8343))))

(assert (=> d!7578 (= res!11808 (= (size!492 q!31) #b00000000000000000000000000010100))))

(assert (=> d!7578 (= (qInv!0 q!31) e!8343)))

(declare-fun b!15178 () Bool)

(declare-fun lambda!681 () Int)

(declare-fun all20!0 (array!1124 Int) Bool)

(assert (=> b!15178 (= e!8343 (all20!0 q!31 lambda!681))))

(assert (= (and d!7578 res!11808) b!15178))

(declare-fun m!24727 () Bool)

(assert (=> b!15178 m!24727))

(assert (=> b!15153 d!7578))

(declare-fun d!7580 () Bool)

(assert (=> d!7580 (= (QInt!0 lt!7796) (and (bvsle #b00000000000000000000000000000000 lt!7796) (bvsle lt!7796 #b00000000111111111111111111111111)))))

(assert (=> b!15147 d!7580))

(push 1)

(assert (not b!15172))

(assert (not b!15157))

(assert (not b!15178))

(assert (not b!15170))

(assert (not b!15171))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

