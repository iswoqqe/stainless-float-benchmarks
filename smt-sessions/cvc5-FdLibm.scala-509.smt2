; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!2881 () Bool)

(assert start!2881)

(declare-fun b!15838 () Bool)

(declare-fun res!12307 () Bool)

(declare-fun e!8772 () Bool)

(assert (=> b!15838 (=> (not res!12307) (not e!8772))))

(declare-fun i!142 () (_ BitVec 32))

(declare-fun carry!33 () (_ BitVec 32))

(declare-datatypes ((array!1196 0))(
  ( (array!1197 (arr!521 (Array (_ BitVec 32) (_ BitVec 32))) (size!521 (_ BitVec 32))) )
))
(declare-fun iq!76 () array!1196)

(declare-fun jz!20 () (_ BitVec 32))

(assert (=> b!15838 (= res!12307 (and (bvsge (select (arr!521 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!15839 () Bool)

(declare-fun e!8767 () Bool)

(declare-fun e!8768 () Bool)

(assert (=> b!15839 (= e!8767 e!8768)))

(declare-fun res!12304 () Bool)

(assert (=> b!15839 (=> (not res!12304) (not e!8768))))

(declare-fun lt!8253 () (_ BitVec 32))

(assert (=> b!15839 (= res!12304 (and (bvsge lt!8253 (bvsub jz!20 #b00000000000000000000000000000001)) (bvsle #b00000000000000000000000000000000 lt!8253) (bvsle lt!8253 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15839 (= lt!8253 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun lt!8255 () (_ BitVec 32))

(declare-fun lt!8254 () (_ BitVec 32))

(assert (=> b!15839 (= lt!8255 (ite (and (= carry!33 #b00000000000000000000000000000000) (not (= lt!8254 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!33))))

(declare-fun b!15840 () Bool)

(declare-fun res!12306 () Bool)

(declare-fun e!8766 () Bool)

(assert (=> b!15840 (=> (not res!12306) (not e!8766))))

(declare-datatypes ((array!1198 0))(
  ( (array!1199 (arr!522 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!522 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1198)

(declare-fun qInv!0 (array!1198) Bool)

(assert (=> b!15840 (= res!12306 (qInv!0 q!31))))

(declare-fun lt!8251 () array!1196)

(declare-datatypes ((Unit!1653 0))(
  ( (Unit!1654) )
))
(declare-datatypes ((tuple4!414 0))(
  ( (tuple4!415 (_1!406 Unit!1653) (_2!406 array!1196) (_3!338 (_ BitVec 32)) (_4!207 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8770 () tuple4!414)

(declare-fun lt!8250 () (_ FloatingPoint 11 53))

(declare-fun b!15841 () Bool)

(declare-fun Unit!1655 () Unit!1653)

(assert (=> b!15841 (= e!8770 (tuple4!415 Unit!1655 lt!8251 jz!20 lt!8250))))

(declare-fun b!15843 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1198 array!1196 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!414)

(assert (=> b!15843 (= e!8770 (computeModuloWhile!0 jz!20 q!31 lt!8251 jz!20 lt!8250))))

(declare-fun b!15844 () Bool)

(assert (=> b!15844 (= e!8766 e!8772)))

(declare-fun res!12302 () Bool)

(assert (=> b!15844 (=> (not res!12302) (not e!8772))))

(declare-fun lt!8249 () tuple4!414)

(declare-fun lt!8252 () (_ FloatingPoint 11 53))

(assert (=> b!15844 (= res!12302 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!8252) (fp.lt lt!8252 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!521 (_2!406 lt!8249)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!15844 (= lt!8252 (fp.sub roundNearestTiesToEven (_4!207 lt!8249) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!207 lt!8249) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!207 lt!8249) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!207 lt!8249) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!207 lt!8249) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!15844 (= lt!8249 e!8770)))

(declare-fun c!1979 () Bool)

(assert (=> b!15844 (= c!1979 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!15844 (= lt!8250 (select (arr!522 q!31) jz!20))))

(assert (=> b!15844 (= lt!8251 (array!1197 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!15845 () Bool)

(declare-fun res!12309 () Bool)

(assert (=> b!15845 (=> (not res!12309) (not e!8768))))

(declare-fun iqInv!0 (array!1196) Bool)

(assert (=> b!15845 (= res!12309 (iqInv!0 (array!1197 (store (arr!521 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!8254 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!8254) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!8254))) (size!521 iq!76))))))

(declare-fun b!15846 () Bool)

(declare-fun res!12308 () Bool)

(assert (=> b!15846 (=> (not res!12308) (not e!8772))))

(assert (=> b!15846 (= res!12308 (iqInv!0 iq!76))))

(declare-fun b!15847 () Bool)

(assert (=> b!15847 (= e!8772 e!8767)))

(declare-fun res!12303 () Bool)

(assert (=> b!15847 (=> (not res!12303) (not e!8767))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!15847 (= res!12303 (QInt!0 lt!8254))))

(assert (=> b!15847 (= lt!8254 (select (arr!521 iq!76) i!142))))

(declare-fun b!15842 () Bool)

(assert (=> b!15842 (= e!8768 (and (bvsge (select (store (arr!521 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!8254 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!8254) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!8254))) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= lt!8255 #b00000000000000000000000000000000) (= lt!8255 #b00000000000000000000000000000001)) (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun res!12305 () Bool)

(assert (=> start!2881 (=> (not res!12305) (not e!8766))))

(assert (=> start!2881 (= res!12305 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2881 e!8766))

(assert (=> start!2881 true))

(declare-fun array_inv!469 (array!1198) Bool)

(assert (=> start!2881 (array_inv!469 q!31)))

(declare-fun array_inv!470 (array!1196) Bool)

(assert (=> start!2881 (array_inv!470 iq!76)))

(assert (= (and start!2881 res!12305) b!15840))

(assert (= (and b!15840 res!12306) b!15844))

(assert (= (and b!15844 c!1979) b!15843))

(assert (= (and b!15844 (not c!1979)) b!15841))

(assert (= (and b!15844 res!12302) b!15846))

(assert (= (and b!15846 res!12308) b!15838))

(assert (= (and b!15838 res!12307) b!15847))

(assert (= (and b!15847 res!12303) b!15839))

(assert (= (and b!15839 res!12304) b!15845))

(assert (= (and b!15845 res!12309) b!15842))

(declare-fun m!25193 () Bool)

(assert (=> b!15838 m!25193))

(declare-fun m!25195 () Bool)

(assert (=> b!15844 m!25195))

(declare-fun m!25197 () Bool)

(assert (=> b!15844 m!25197))

(declare-fun m!25199 () Bool)

(assert (=> b!15846 m!25199))

(declare-fun m!25201 () Bool)

(assert (=> b!15845 m!25201))

(declare-fun m!25203 () Bool)

(assert (=> b!15845 m!25203))

(declare-fun m!25205 () Bool)

(assert (=> start!2881 m!25205))

(declare-fun m!25207 () Bool)

(assert (=> start!2881 m!25207))

(declare-fun m!25209 () Bool)

(assert (=> b!15840 m!25209))

(assert (=> b!15842 m!25201))

(declare-fun m!25211 () Bool)

(assert (=> b!15842 m!25211))

(declare-fun m!25213 () Bool)

(assert (=> b!15843 m!25213))

(declare-fun m!25215 () Bool)

(assert (=> b!15847 m!25215))

(declare-fun m!25217 () Bool)

(assert (=> b!15847 m!25217))

(push 1)

(assert (not b!15840))

(assert (not start!2881))

(assert (not b!15846))

(assert (not b!15847))

(assert (not b!15843))

(assert (not b!15845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

