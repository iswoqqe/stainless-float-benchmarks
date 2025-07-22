; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1829 () Bool)

(assert start!1829)

(declare-fun b!9912 () Bool)

(declare-fun res!8188 () Bool)

(declare-fun e!5190 () Bool)

(assert (=> b!9912 (=> (not res!8188) (not e!5190))))

(declare-datatypes ((array!687 0))(
  ( (array!688 (arr!297 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!297 (_ BitVec 32))) )
))
(declare-fun f!79 () array!687)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9912 (= res!8188 (Q!0 (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!9913 () Bool)

(declare-fun res!8187 () Bool)

(assert (=> b!9913 (=> (not res!8187) (not e!5190))))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!9913 (= res!8187 (bvsle i!190 jz!36))))

(declare-fun b!9914 () Bool)

(declare-fun res!8180 () Bool)

(assert (=> b!9914 (=> (not res!8180) (not e!5190))))

(assert (=> b!9914 (= res!8180 (Q!0 (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!9915 () Bool)

(declare-fun res!8182 () Bool)

(assert (=> b!9915 (=> (not res!8182) (not e!5190))))

(declare-fun fInv!0 (array!687) Bool)

(assert (=> b!9915 (= res!8182 (fInv!0 f!79))))

(declare-fun b!9916 () Bool)

(declare-fun res!8183 () Bool)

(declare-fun e!5196 () Bool)

(assert (=> b!9916 (=> (not res!8183) (not e!5196))))

(declare-fun xx!50 () array!687)

(declare-fun xxInv!0 (array!687) Bool)

(assert (=> b!9916 (= res!8183 (xxInv!0 xx!50))))

(declare-fun b!9917 () Bool)

(declare-fun res!8179 () Bool)

(assert (=> b!9917 (=> (not res!8179) (not e!5190))))

(declare-fun q!51 () array!687)

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9917 (= res!8179 (P!3 (select (store (arr!297 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!297 xx!50) #b00000000000000000000000000000000) (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!297 xx!50) #b00000000000000000000000000000001) (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!297 xx!50) #b00000000000000000000000000000010) (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!297 xx!50) #b00000000000000000000000000000011) (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!297 xx!50) #b00000000000000000000000000000100) (select (arr!297 f!79) i!190)))) i!190)))))

(declare-fun res!8191 () Bool)

(assert (=> start!1829 (=> (not res!8191) (not e!5196))))

(declare-fun e!19 () (_ BitVec 32))

(assert (=> start!1829 (= res!8191 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1829 e!5196))

(declare-fun array_inv!247 (array!687) Bool)

(assert (=> start!1829 (array_inv!247 f!79)))

(assert (=> start!1829 (array_inv!247 q!51)))

(assert (=> start!1829 true))

(assert (=> start!1829 (array_inv!247 xx!50)))

(declare-fun b!9918 () Bool)

(declare-fun res!8185 () Bool)

(assert (=> b!9918 (=> (not res!8185) (not e!5190))))

(assert (=> b!9918 (= res!8185 (Q!0 (select (arr!297 f!79) i!190)))))

(declare-fun b!9919 () Bool)

(declare-fun e!5191 () Bool)

(assert (=> b!9919 (= e!5196 e!5191)))

(declare-fun res!8181 () Bool)

(assert (=> b!9919 (=> (not res!8181) (not e!5191))))

(declare-fun lt!4714 () (_ BitVec 32))

(assert (=> b!9919 (= res!8181 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4714 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4714) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!9919 (= lt!4714 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!9920 () Bool)

(declare-fun res!8186 () Bool)

(assert (=> b!9920 (=> (not res!8186) (not e!5190))))

(assert (=> b!9920 (= res!8186 (Q!0 (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(declare-fun b!9921 () Bool)

(declare-fun res!8190 () Bool)

(assert (=> b!9921 (=> (not res!8190) (not e!5190))))

(declare-fun qInv!0 (array!687) Bool)

(assert (=> b!9921 (= res!8190 (qInv!0 q!51))))

(declare-fun b!9922 () Bool)

(declare-datatypes ((Unit!701 0))(
  ( (Unit!702) )
))
(declare-datatypes ((tuple3!188 0))(
  ( (tuple3!189 (_1!238 Unit!701) (_2!238 (_ BitVec 32)) (_3!197 array!687)) )
))
(declare-fun e!5195 () tuple3!188)

(declare-fun lt!4711 () (_ BitVec 32))

(declare-fun lt!4715 () array!687)

(declare-fun Unit!703 () Unit!701)

(assert (=> b!9922 (= e!5195 (tuple3!189 Unit!703 lt!4711 lt!4715))))

(declare-fun b!9923 () Bool)

(declare-fun lt!4713 () (_ BitVec 32))

(assert (=> b!9923 (= e!5190 (and (bvsgt lt!4713 jz!36) (bvsle lt!4713 jz!36)))))

(assert (=> b!9923 (= lt!4713 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!9924 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!687 (_ BitVec 32) array!687) tuple3!188)

(assert (=> b!9924 (= e!5195 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4711 lt!4715))))

(declare-fun b!9925 () Bool)

(declare-fun res!8184 () Bool)

(assert (=> b!9925 (=> (not res!8184) (not e!5190))))

(assert (=> b!9925 (= res!8184 (Q!0 (select (arr!297 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!9926 () Bool)

(assert (=> b!9926 (= e!5191 e!5190)))

(declare-fun res!8189 () Bool)

(assert (=> b!9926 (=> (not res!8189) (not e!5190))))

(assert (=> b!9926 (= res!8189 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-fun lt!4712 () tuple3!188)

(assert (=> b!9926 (= lt!4712 e!5195)))

(declare-fun c!1073 () Bool)

(assert (=> b!9926 (= c!1073 (bvsle lt!4711 (bvadd (bvsub (size!297 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!9926 (= lt!4711 #b00000000000000000000000000000000)))

(assert (=> b!9926 (= lt!4715 (array!688 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(assert (= (and start!1829 res!8191) b!9916))

(assert (= (and b!9916 res!8183) b!9919))

(assert (= (and b!9919 res!8181) b!9926))

(assert (= (and b!9926 c!1073) b!9924))

(assert (= (and b!9926 (not c!1073)) b!9922))

(assert (= (and b!9926 res!8189) b!9915))

(assert (= (and b!9915 res!8182) b!9921))

(assert (= (and b!9921 res!8190) b!9913))

(assert (= (and b!9913 res!8187) b!9920))

(assert (= (and b!9920 res!8186) b!9925))

(assert (= (and b!9925 res!8184) b!9912))

(assert (= (and b!9912 res!8188) b!9914))

(assert (= (and b!9914 res!8180) b!9918))

(assert (= (and b!9918 res!8185) b!9917))

(assert (= (and b!9917 res!8179) b!9923))

(declare-fun m!17615 () Bool)

(assert (=> b!9914 m!17615))

(assert (=> b!9914 m!17615))

(declare-fun m!17617 () Bool)

(assert (=> b!9914 m!17617))

(declare-fun m!17619 () Bool)

(assert (=> b!9918 m!17619))

(assert (=> b!9918 m!17619))

(declare-fun m!17621 () Bool)

(assert (=> b!9918 m!17621))

(declare-fun m!17623 () Bool)

(assert (=> b!9920 m!17623))

(assert (=> b!9920 m!17623))

(declare-fun m!17625 () Bool)

(assert (=> b!9920 m!17625))

(declare-fun m!17627 () Bool)

(assert (=> b!9921 m!17627))

(declare-fun m!17629 () Bool)

(assert (=> b!9915 m!17629))

(declare-fun m!17631 () Bool)

(assert (=> b!9916 m!17631))

(declare-fun m!17633 () Bool)

(assert (=> b!9917 m!17633))

(declare-fun m!17635 () Bool)

(assert (=> b!9917 m!17635))

(assert (=> b!9917 m!17623))

(declare-fun m!17637 () Bool)

(assert (=> b!9917 m!17637))

(declare-fun m!17639 () Bool)

(assert (=> b!9917 m!17639))

(assert (=> b!9917 m!17615))

(declare-fun m!17641 () Bool)

(assert (=> b!9917 m!17641))

(declare-fun m!17643 () Bool)

(assert (=> b!9917 m!17643))

(assert (=> b!9917 m!17633))

(declare-fun m!17645 () Bool)

(assert (=> b!9917 m!17645))

(assert (=> b!9917 m!17619))

(declare-fun m!17647 () Bool)

(assert (=> b!9917 m!17647))

(declare-fun m!17649 () Bool)

(assert (=> b!9917 m!17649))

(declare-fun m!17651 () Bool)

(assert (=> b!9917 m!17651))

(declare-fun m!17653 () Bool)

(assert (=> b!9924 m!17653))

(declare-fun m!17655 () Bool)

(assert (=> start!1829 m!17655))

(declare-fun m!17657 () Bool)

(assert (=> start!1829 m!17657))

(declare-fun m!17659 () Bool)

(assert (=> start!1829 m!17659))

(assert (=> b!9912 m!17639))

(assert (=> b!9912 m!17639))

(declare-fun m!17661 () Bool)

(assert (=> b!9912 m!17661))

(assert (=> b!9925 m!17637))

(assert (=> b!9925 m!17637))

(declare-fun m!17663 () Bool)

(assert (=> b!9925 m!17663))

(push 1)

(assert (not b!9918))

(assert (not b!9914))

(assert (not b!9917))

(assert (not b!9912))

(assert (not b!9915))

(assert (not start!1829))

(assert (not b!9921))

(assert (not b!9920))

(assert (not b!9925))

(assert (not b!9924))

(assert (not b!9916))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

