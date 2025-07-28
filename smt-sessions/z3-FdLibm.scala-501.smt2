; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2657 () Bool)

(assert start!2657)

(declare-datatypes ((Unit!1573 0))(
  ( (Unit!1574) )
))
(declare-datatypes ((array!1146 0))(
  ( (array!1147 (arr!505 (Array (_ BitVec 32) (_ BitVec 32))) (size!505 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!388 0))(
  ( (tuple4!389 (_1!388 Unit!1573) (_2!388 array!1146) (_3!325 (_ BitVec 32)) (_4!194 (_ FloatingPoint 11 53))) )
))
(declare-fun e!8245 () tuple4!388)

(declare-fun b!14538 () Bool)

(declare-fun lt!7733 () (_ FloatingPoint 11 53))

(declare-fun jz!20 () (_ BitVec 32))

(declare-fun lt!7732 () array!1146)

(declare-fun Unit!1575 () Unit!1573)

(assert (=> b!14538 (= e!8245 (tuple4!389 Unit!1575 lt!7732 jz!20 lt!7733))))

(declare-fun res!11238 () Bool)

(declare-fun e!8246 () Bool)

(assert (=> start!2657 (=> (not res!11238) (not e!8246))))

(assert (=> start!2657 (= res!11238 (and (bvsle #b00000000000000000000000000000010 jz!20) (bvslt jz!20 #b00000000000000000000000000010011)))))

(assert (=> start!2657 e!8246))

(assert (=> start!2657 true))

(declare-datatypes ((array!1148 0))(
  ( (array!1149 (arr!506 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!506 (_ BitVec 32))) )
))
(declare-fun q!31 () array!1148)

(declare-fun array_inv!453 (array!1148) Bool)

(assert (=> start!2657 (array_inv!453 q!31)))

(declare-fun iq!76 () array!1146)

(declare-fun array_inv!454 (array!1146) Bool)

(assert (=> start!2657 (array_inv!454 iq!76)))

(declare-fun b!14539 () Bool)

(declare-fun computeModuloWhile!0 ((_ BitVec 32) array!1148 array!1146 (_ BitVec 32) (_ FloatingPoint 11 53)) tuple4!388)

(assert (=> b!14539 (= e!8245 (computeModuloWhile!0 jz!20 q!31 lt!7732 jz!20 lt!7733))))

(declare-fun b!14540 () Bool)

(declare-fun res!11230 () Bool)

(declare-fun e!8248 () Bool)

(assert (=> b!14540 (=> (not res!11230) (not e!8248))))

(declare-fun i!142 () (_ BitVec 32))

(declare-fun carry!33 () (_ BitVec 32))

(assert (=> b!14540 (= res!11230 (and (bvsge (select (arr!505 iq!76) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (or (= carry!33 #b00000000000000000000000000000000) (= carry!33 #b00000000000000000000000000000001)) (bvslt i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun b!14541 () Bool)

(declare-fun e!8247 () Bool)

(declare-fun e!8249 () Bool)

(assert (=> b!14541 (= e!8247 e!8249)))

(declare-fun res!11232 () Bool)

(assert (=> b!14541 (=> (not res!11232) (not e!8249))))

(declare-datatypes ((tuple4!390 0))(
  ( (tuple4!391 (_1!389 Unit!1573) (_2!389 (_ BitVec 32)) (_3!326 array!1146) (_4!195 (_ BitVec 32))) )
))
(declare-fun lt!7736 () tuple4!390)

(assert (=> b!14541 (= res!11232 (and (bvsle #b00000000000000000000000000000000 (_2!389 lt!7736)) (bvsle (_2!389 lt!7736) (bvsub jz!20 #b00000000000000000000000000000001))))))

(declare-fun lt!7737 () (_ BitVec 32))

(declare-fun lt!7735 () (_ BitVec 32))

(declare-fun computeModuloWhile!3 ((_ BitVec 32) array!1148 (_ BitVec 32) array!1146 (_ BitVec 32)) tuple4!390)

(assert (=> b!14541 (= lt!7736 (computeModuloWhile!3 jz!20 q!31 lt!7737 (array!1147 (store (arr!505 iq!76) i!142 (ite (= carry!33 #b00000000000000000000000000000000) (ite (not (= lt!7735 #b00000000000000000000000000000000)) (bvsub #b00000001000000000000000000000000 lt!7735) #b00000000000000000000000000000000) (bvsub #b00000000111111111111111111111111 lt!7735))) (size!505 iq!76)) (ite (and (= carry!33 #b00000000000000000000000000000000) (not (= lt!7735 #b00000000000000000000000000000000))) #b00000000000000000000000000000001 carry!33)))))

(declare-fun b!14542 () Bool)

(declare-fun res!11233 () Bool)

(assert (=> b!14542 (=> (not res!11233) (not e!8249))))

(declare-fun iqInv!0 (array!1146) Bool)

(assert (=> b!14542 (= res!11233 (iqInv!0 (_3!326 lt!7736)))))

(declare-fun b!14543 () Bool)

(declare-fun res!11235 () Bool)

(assert (=> b!14543 (=> (not res!11235) (not e!8248))))

(assert (=> b!14543 (= res!11235 (iqInv!0 iq!76))))

(declare-fun b!14544 () Bool)

(declare-fun e!8243 () Bool)

(assert (=> b!14544 (= e!8243 e!8247)))

(declare-fun res!11231 () Bool)

(assert (=> b!14544 (=> (not res!11231) (not e!8247))))

(assert (=> b!14544 (= res!11231 (bvslt lt!7737 (bvsub jz!20 #b00000000000000000000000000000001)))))

(assert (=> b!14544 (= lt!7737 (bvadd i!142 #b00000000000000000000000000000001))))

(declare-fun b!14545 () Bool)

(assert (=> b!14545 (= e!8248 e!8243)))

(declare-fun res!11237 () Bool)

(assert (=> b!14545 (=> (not res!11237) (not e!8243))))

(declare-fun QInt!0 ((_ BitVec 32)) Bool)

(assert (=> b!14545 (= res!11237 (QInt!0 lt!7735))))

(assert (=> b!14545 (= lt!7735 (select (arr!505 iq!76) i!142))))

(declare-fun b!14546 () Bool)

(assert (=> b!14546 (= e!8246 e!8248)))

(declare-fun res!11234 () Bool)

(assert (=> b!14546 (=> (not res!11234) (not e!8248))))

(declare-fun lt!7731 () (_ FloatingPoint 11 53))

(declare-fun lt!7734 () tuple4!388)

(assert (=> b!14546 (= res!11234 (and (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) lt!7731) (fp.lt lt!7731 (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000)) (bvsge (select (arr!505 (_2!388 lt!7734)) (bvsub jz!20 #b00000000000000000000000000000001)) #b00000000100000000000000000000000) (bvsle #b00000000000000000000000000000000 i!142) (bvsle i!142 (bvsub jz!20 #b00000000000000000000000000000001))))))

(assert (=> b!14546 (= lt!7731 (fp.sub roundNearestTiesToEven (_4!194 lt!7734) (fp.mul roundNearestTiesToEven (fp #b0 #b10000000010 #b0000000000000000000000000000000000000000000000000000) ((_ to_fp 11 53) roundNearestTiesToEven (ite (fp.isNaN (fp.mul roundNearestTiesToEven (_4!194 lt!7734) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))) #b0000000000000000000000000000000000000000000000000000000000000000 (ite (fp.gt (fp.mul roundNearestTiesToEven (_4!194 lt!7734) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b0111111111111111111111111111111111111111111111111111111111111111)) #b0111111111111111111111111111111111111111111111111111111111111111 (ite (fp.lt (fp.mul roundNearestTiesToEven (_4!194 lt!7734) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000)) ((_ to_fp 11 53) roundTowardZero #b1000000000000000000000000000000000000000000000000000000000000000)) #b1000000000000000000000000000000000000000000000000000000000000000 ((_ fp.to_sbv 64) roundTowardZero (fp.mul roundNearestTiesToEven (_4!194 lt!7734) (fp #b0 #b01111111100 #b0000000000000000000000000000000000000000000000000000))))))))))))

(assert (=> b!14546 (= lt!7734 e!8245)))

(declare-fun c!1865 () Bool)

(assert (=> b!14546 (= c!1865 (bvsgt jz!20 #b00000000000000000000000000000000))))

(assert (=> b!14546 (= lt!7733 (select (arr!506 q!31) jz!20))))

(assert (=> b!14546 (= lt!7732 (array!1147 ((as const (Array (_ BitVec 32) (_ BitVec 32))) #b00000000000000000000000000000000) #b00000000000000000000000000010100))))

(declare-fun b!14547 () Bool)

(assert (=> b!14547 (= e!8249 (and (not (= (bvand jz!20 #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand jz!20 #b10000000000000000000000000000000) (bvand (bvsub jz!20 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!14548 () Bool)

(declare-fun res!11236 () Bool)

(assert (=> b!14548 (=> (not res!11236) (not e!8246))))

(declare-fun qInv!0 (array!1148) Bool)

(assert (=> b!14548 (= res!11236 (qInv!0 q!31))))

(assert (= (and start!2657 res!11238) b!14548))

(assert (= (and b!14548 res!11236) b!14546))

(assert (= (and b!14546 c!1865) b!14539))

(assert (= (and b!14546 (not c!1865)) b!14538))

(assert (= (and b!14546 res!11234) b!14543))

(assert (= (and b!14543 res!11235) b!14540))

(assert (= (and b!14540 res!11230) b!14545))

(assert (= (and b!14545 res!11237) b!14544))

(assert (= (and b!14544 res!11231) b!14541))

(assert (= (and b!14541 res!11232) b!14542))

(assert (= (and b!14542 res!11233) b!14547))

(declare-fun m!22039 () Bool)

(assert (=> b!14539 m!22039))

(declare-fun m!22041 () Bool)

(assert (=> b!14543 m!22041))

(declare-fun m!22043 () Bool)

(assert (=> b!14541 m!22043))

(declare-fun m!22045 () Bool)

(assert (=> b!14541 m!22045))

(declare-fun m!22047 () Bool)

(assert (=> b!14548 m!22047))

(declare-fun m!22049 () Bool)

(assert (=> start!2657 m!22049))

(declare-fun m!22051 () Bool)

(assert (=> start!2657 m!22051))

(declare-fun m!22053 () Bool)

(assert (=> b!14542 m!22053))

(declare-fun m!22055 () Bool)

(assert (=> b!14540 m!22055))

(declare-fun m!22057 () Bool)

(assert (=> b!14545 m!22057))

(declare-fun m!22059 () Bool)

(assert (=> b!14545 m!22059))

(declare-fun m!22061 () Bool)

(assert (=> b!14546 m!22061))

(declare-fun m!22063 () Bool)

(assert (=> b!14546 m!22063))

(check-sat (not b!14539) (not b!14548) (not start!2657) (not b!14545) (not b!14541) (not b!14542) (not b!14543))
(check-sat)
