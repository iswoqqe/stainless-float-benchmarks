; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2867 () Bool)

(assert start!2867)

(declare-fun b!15783 () Bool)

(declare-fun e!8735 () Bool)

(declare-fun e!8734 () Bool)

(assert (=> b!15783 (= e!8735 e!8734)))

(declare-fun res!12266 () Bool)

(assert (=> b!15783 (=> (not res!12266) (not e!8734))))

(declare-datatypes ((Unit!1649 0))(
  ( (Unit!1650) )
))
(declare-datatypes ((array!1190 0))(
  ( (array!1191 (arr!519 (Array (_ BitVec 32) (_ BitVec 32))) (size!519 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!412 0))(
  ( (tuple4!413 (_1!405 Unit!1649) (_2!405 array!1190) (_3!337 (_ BitVec 32)) (_4!206 (_ FloatingPoint 11 53))) )
))
(declare-fun lt!8219 () tuple4!412)

(declare-fun i!142 () (_ BitVec 32))

(declare-fun lt!8218 () (_ FloatingPoint 11 53))

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!15783 (= res!12266 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8218) (fp.lt lt!8218 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!519 (_2!405 lt!8219)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15783 (= lt!8218 (fp.sub roundNearestTiesToEven (_4!206 lt!8219) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!206 lt!8219) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!206 lt!8219) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!206 lt!8219) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!206 lt!8219) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(declare-fun e!8731 () tuple4!412)

(assert (=> b!15783 (= lt!8219 e!8731)))

(declare-fun c!1973 () Bool)

(assert (=> b!15783 (= c!1973 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun lt!8217 () (_ FloatingPoint 11 53))

(declare-datatypes ((array!1192 0))(
  ( (array!1193 (arr!520 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!520 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1192)

(assert (=> b!15783 (= lt!8217 (select (arr!520 q!31) jz!20))))

(declare-fun lt!8213 () array!1190)

(assert (=> b!15783 (= lt!8213 (array!1191 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15784 () Bool)

(declare-fun e!8730 () Bool)

(declare-fun lt!8214 () (_ BitVec 32))

(declare-fun iq!76 () array!1190)

(assert (=> b!15784 (= e!8730 (or (bvslt lt!8214 #b00000000000000000000000000000000) (bvsge lt!8214 (size!519 iq!76))))))

(assert (=> b!15784 (= lt!8214 (bvsub jz!20 #b00000000000000000000000000000001))))

(declare-fun b!15785 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1192 array!1190 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!412)

(assert (=> b!15785 (= e!8731 (computeModuloWhile!0 jz!20 q!31 lt!8213 jz!20 lt!8217))))

(declare-fun res!12265 () Bool)

(assert (=> start!2867 (=> (not res!12265) (not e!8735))))

(assert (=> start!2867 (= res!12265 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2867 e!8735))

(assert (=> start!2867 true))

(declare-fun array_inv!467 (array!1192) Bool)

(assert (=> start!2867 (array_inv!467 q!31)))

(declare-fun array_inv!468 (array!1190) Bool)

(assert (=> start!2867 (array_inv!468 iq!76)))

(declare-fun b!15786 () Bool)

(declare-fun res!12260 () Bool)

(assert (=> b!15786 (=> (not res!12260) (not e!8735))))

(declare-fun qInv!0 (array!1192) Bool)

(assert (=> b!15786 (= res!12260 (qInv!0 q!31))))

(declare-fun b!15787 () Bool)

(declare-fun res!12261 () Bool)

(assert (=> b!15787 (=> (not res!12261) (not e!8730))))

(declare-fun lt!8216 () (_ BitVec 32))

(declare-fun carry!33 () (_ BitVec 32))

(declare-fun iqInv!0 (array!1190) Bool)

(assert (=> b!15787 (= res!12261 (iqInv!0 (array!1191 (store (arr!519 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!8216 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!8216) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!8216))) (size!519 iq!76))))))

(declare-fun b!15788 () Bool)

(declare-fun e!8732 () Bool)

(assert (=> b!15788 (= e!8734 e!8732)))

(declare-fun res!12263 () Bool)

(assert (=> b!15788 (=> (not res!12263) (not e!8732))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15788 (= res!12263 (QInt!0 lt!8216))))

(assert (=> b!15788 (= lt!8216 (select (arr!519 iq!76) i!142))))

(declare-fun b!15789 () Bool)

(declare-fun Unit!1651 () Unit!1649)

(assert (=> b!15789 (= e!8731 (tuple4!413 Unit!1651 lt!8213 jz!20 lt!8217))))

(declare-fun b!15790 () Bool)

(declare-fun res!12259 () Bool)

(assert (=> b!15790 (=> (not res!12259) (not e!8734))))

(assert (=> b!15790 (= res!12259 (iqInv!0 iq!76))))

(declare-fun b!15791 () Bool)

(declare-fun res!12264 () Bool)

(assert (=> b!15791 (=> (not res!12264) (not e!8734))))

(assert (=> b!15791 (= res!12264 (and (bvsge (select (arr!519 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!15792 () Bool)

(assert (=> b!15792 (= e!8732 e!8730)))

(declare-fun res!12262 () Bool)

(assert (=> b!15792 (=> (not res!12262) (not e!8730))))

(declare-fun lt!8215 () (_ BitVec 32))

(assert (=> b!15792 (= res!12262 (and (bvsge lt!8215 (bvsub jz!20 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!8215) (bvsle lt!8215 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15792 (= lt!8215 (bvadd i!142 #b00000000000000000000000000000001))))

(assert (= (and start!2867 res!12265) b!15786))

(assert (= (and b!15786 res!12260) b!15783))

(assert (= (and b!15783 c!1973) b!15785))

(assert (= (and b!15783 (not c!1973)) b!15789))

(assert (= (and b!15783 res!12266) b!15790))

(assert (= (and b!15790 res!12259) b!15791))

(assert (= (and b!15791 res!12264) b!15788))

(assert (= (and b!15788 res!12263) b!15792))

(assert (= (and b!15792 res!12262) b!15787))

(assert (= (and b!15787 res!12261) b!15784))

(declare-fun m!25153 () Bool)

(assert (=> b!15783 m!25153))

(declare-fun m!25155 () Bool)

(assert (=> b!15783 m!25155))

(declare-fun m!25157 () Bool)

(assert (=> b!15786 m!25157))

(declare-fun m!25159 () Bool)

(assert (=> b!15788 m!25159))

(declare-fun m!25161 () Bool)

(assert (=> b!15788 m!25161))

(declare-fun m!25163 () Bool)

(assert (=> start!2867 m!25163))

(declare-fun m!25165 () Bool)

(assert (=> start!2867 m!25165))

(declare-fun m!25167 () Bool)

(assert (=> b!15785 m!25167))

(declare-fun m!25169 () Bool)

(assert (=> b!15787 m!25169))

(declare-fun m!25171 () Bool)

(assert (=> b!15787 m!25171))

(declare-fun m!25173 () Bool)

(assert (=> b!15790 m!25173))

(declare-fun m!25175 () Bool)

(assert (=> b!15791 m!25175))

(push 1)

(assert (not start!2867))

(assert (not b!15786))

(assert (not b!15788))

(assert (not b!15790))

(assert (not b!15785))

(assert (not b!15787))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7666 () Bool)

(assert (=> d!7666 (= (array_inv!467 q!31) (bvsge (size!520 q!31) #b00000000000000000000000000000000))))

(assert (=> start!2867 d!7666))

(declare-fun d!7668 () Bool)

(assert (=> d!7668 (= (array_inv!468 iq!76) (bvsge (size!519 iq!76) #b00000000000000000000000000000000))))

(assert (=> start!2867 d!7668))

(declare-fun d!7670 () Bool)

(declare-fun res!12269 () Bool)

(declare-fun e!8738 () Bool)

(assert (=> d!7670 (=> (not res!12269) (not e!8738))))

(assert (=> d!7670 (= res!12269 (= (size!519 iq!76) #b00000000000000000000000000010100))))

(assert (=> d!7670 (= (iqInv!0 iq!76) e!8738)))

(declare-fun b!15795 () Bool)

(declare-fun lambda!716 () Int)

(declare-fun all20Int!0 (array!1190 Int) Bool)

(assert (=> b!15795 (= e!8738 (all20Int!0 iq!76 lambda!716))))

(assert (= (and d!7670 res!12269) b!15795))

(declare-fun m!25177 () Bool)

(assert (=> b!15795 m!25177))

(assert (=> b!15790 d!7670))

(declare-fun lt!8232 () (_ BitVec 32))

(declare-fun b!15808 () Bool)

(declare-fun e!8746 () tuple4!412)

(declare-fun lt!8231 () (_ FloatingPoint 11 53))

(declare-fun lt!8233 () array!1190)

(assert (=> b!15808 (= e!8746 (computeModuloWhile!0 jz!20 q!31 lt!8233 lt!8232 lt!8231))))

(declare-fun b!15809 () Bool)

(declare-fun res!12281 () Bool)

(declare-fun e!8747 () Bool)

(assert (=> b!15809 (=> (not res!12281) (not e!8747))))

(declare-fun lt!8234 () tuple4!412)

(assert (=> b!15809 (= res!12281 (iqInv!0 (_2!405 lt!8234)))))

(declare-fun b!15810 () Bool)

(declare-fun res!12280 () Bool)

(declare-fun e!8745 () Bool)

(assert (=> b!15810 (=> (not res!12280) (not e!8745))))

(assert (=> b!15810 (= res!12280 (iqInv!0 lt!8213))))

(declare-fun d!7672 () Bool)

(assert (=> d!7672 e!8747))

(declare-fun res!12278 () Bool)

(assert (=> d!7672 (=> (not res!12278) (not e!8747))))

(assert (=> d!7672 (= res!12278 (and true true (bvsle #b00000000000000000000000000000000 (_3!337 lt!8234)) (bvsle (_3!337 lt!8234) jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (_4!206 lt!8234)) (fp.leq (_4!206 lt!8234) (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!7672 (= lt!8234 e!8746)))

(declare-fun c!1976 () Bool)

(assert (=> d!7672 (= c!1976 (bvsgt lt!8232 #b00000000000000000000000000000000))))

(assert (=> d!7672 (= lt!8232 (bvsub jz!20 #b00000000000000000000000000000001))))

(declare-fun lt!8230 () (_ FloatingPoint 11 53))

(assert (=> d!7672 (= lt!8231 (fp.add roundNearestTiesToEven (select (arr!520 q!31) (bvsub jz!20 #b00000000000000000000000000000001)) lt!8230))))

(assert (=> d!7672 (= lt!8233 (array!1191 (store (arr!519 lt!8213) (bvsub jz!20 jz!20) (ite (fp.isNaN (fp.sub roundNearestTiesToEven lt!8217 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8230))) #b00000000000000000000000000000000 (ite (fp.gt (fp.sub roundNearestTiesToEven lt!8217 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8230)) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.sub roundNearestTiesToEven lt!8217 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8230)) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.sub roundNearestTiesToEven lt!8217 (fp.mul roundNearestTiesToEven (fp #b0 #b10000010111 #b0000000000000000000000000000000000000000000000000000) lt!8230))))))) (size!519 lt!8213)))))

(assert (=> d!7672 (= lt!8230 ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!8217)) #b00000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!8217) ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!8217) ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero (fp.mul roundNearestTiesToEven (fp #b0 #b01111100111 #b0000000000000000000000000000000000000000000000000000) lt!8217)))))))))

(assert (=> d!7672 e!8745))

(declare-fun res!12279 () Bool)

(assert (=> d!7672 (=> (not res!12279) (not e!8745))))

(assert (=> d!7672 (= res!12279 (and (bvsle #b00000000000000000000000000000000 jz!20) (bvsle jz!20 jz!20) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8217) (fp.leq lt!8217 (fp #b0 #b10000110001 #b0100000000000000000000010011111111111111111111111100))))))

(assert (=> d!7672 (= (computeModuloWhile!0 jz!20 q!31 lt!8213 jz!20 lt!8217) lt!8234)))

(declare-fun b!15811 () Bool)

(assert (=> b!15811 (= e!8745 (bvsgt jz!20 #b00000000000000000000000000000000))))

(declare-fun b!15812 () Bool)

(assert (=> b!15812 (= e!8747 (bvsle (_3!337 lt!8234) #b00000000000000000000000000000000))))

(declare-fun b!15813 () Bool)

(declare-fun Unit!1652 () Unit!1649)

(assert (=> b!15813 (= e!8746 (tuple4!413 Unit!1652 lt!8233 lt!8232 lt!8231))))

(assert (= (and d!7672 res!12279) b!15810))

(assert (= (and b!15810 res!12280) b!15811))

(assert (= (and d!7672 c!1976) b!15808))

(assert (= (and d!7672 (not c!1976)) b!15813))

(assert (= (and d!7672 res!12278) b!15809))

(assert (= (and b!15809 res!12281) b!15812))

(declare-fun m!25179 () Bool)

(assert (=> b!15808 m!25179))

(declare-fun m!25181 () Bool)

(assert (=> b!15809 m!25181))

(declare-fun m!25183 () Bool)

(assert (=> b!15810 m!25183))

(declare-fun m!25185 () Bool)

(assert (=> d!7672 m!25185))

(declare-fun m!25187 () Bool)

(assert (=> d!7672 m!25187))

(assert (=> b!15785 d!7672))

(declare-fun d!7674 () Bool)

(declare-fun res!12284 () Bool)

(declare-fun e!8750 () Bool)

(assert (=> d!7674 (=> (not res!12284) (not e!8750))))

(assert (=> d!7674 (= res!12284 (= (size!520 q!31) #b00000000000000000000000000010100))))

(assert (=> d!7674 (= (qInv!0 q!31) e!8750)))

(declare-fun b!15816 () Bool)

(declare-fun lambda!719 () Int)

(declare-fun all20!0 (array!1192 Int) Bool)

(assert (=> b!15816 (= e!8750 (all20!0 q!31 lambda!719))))

(assert (= (and d!7674 res!12284) b!15816))

(declare-fun m!25189 () Bool)

(assert (=> b!15816 m!25189))

(assert (=> b!15786 d!7674))

(declare-fun bs!3194 () Bool)

(declare-fun b!15817 () Bool)

(assert (= bs!3194 (and b!15817 b!15795)))

(declare-fun lambda!720 () Int)

(assert (=> bs!3194 (= lambda!720 lambda!716)))

(declare-fun d!7676 () Bool)

(declare-fun res!12285 () Bool)

(declare-fun e!8751 () Bool)

(assert (=> d!7676 (=> (not res!12285) (not e!8751))))

(assert (=> d!7676 (= res!12285 (= (size!519 (array!1191 (store (arr!519 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!8216 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!8216) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!8216))) (size!519 iq!76))) #b00000000000000000000000000010100))))

(assert (=> d!7676 (= (iqInv!0 (array!1191 (store (arr!519 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!8216 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!8216) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!8216))) (size!519 iq!76))) e!8751)))

(assert (=> b!15817 (= e!8751 (all20Int!0 (array!1191 (store (arr!519 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!8216 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!8216) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!8216))) (size!519 iq!76)) lambda!720))))

(assert (= (and d!7676 res!12285) b!15817))

(declare-fun m!25191 () Bool)

(assert (=> b!15817 m!25191))

(assert (=> b!15787 d!7676))

(declare-fun d!7678 () Bool)

(assert (=> d!7678 (= (QInt!0 lt!8216) (and (bvsle #b00000000000000000000000000000000 lt!8216) (bvsle lt!8216 #b00000000111111111111111111111111)))))

(assert (=> b!15788 d!7678))

(push 1)

(assert (not b!15795))

(assert (not b!15808))

(assert (not b!15816))

(assert (not b!15809))

(assert (not b!15810))

(assert (not b!15817))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

