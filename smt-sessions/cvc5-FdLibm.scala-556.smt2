; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3117 () Bool)

(assert start!3117)

(declare-fun b_free!29 () Bool)

(declare-fun b_next!29 () Bool)

(assert (=> start!3117 (= b_free!29 (not b_next!29))))

(declare-fun tp!44 () Bool)

(declare-fun b_and!159 () Bool)

(assert (=> start!3117 (= tp!44 b_and!159)))

(declare-fun b!17412 () Bool)

(declare-fun res!13846 () Bool)

(declare-fun e!9382 () Bool)

(assert (=> b!17412 (=> (not res!13846) (not e!9382))))

(declare-fun P!6 () Int)

(declare-datatypes ((array!1378 0))(
  ( (array!1379 (arr!601 (Array (_ BitVec 32) (_ BitVec 32))) (size!601 (_ BitVec 32))) )
))
(declare-fun a!13 () array!1378)

(declare-fun dynLambda!57 (Int (_ BitVec 32)) Bool)

(assert (=> b!17412 (= res!13846 (dynLambda!57 P!6 (select (arr!601 a!13) #b00000000000000000000000000001000)))))

(declare-fun b!17413 () Bool)

(declare-fun res!13842 () Bool)

(assert (=> b!17413 (=> (not res!13842) (not e!9382))))

(assert (=> b!17413 (= res!13842 (dynLambda!57 P!6 (select (arr!601 a!13) #b00000000000000000000000000001010)))))

(declare-fun b!17414 () Bool)

(declare-fun res!13845 () Bool)

(assert (=> b!17414 (=> (not res!13845) (not e!9382))))

(assert (=> b!17414 (= res!13845 (dynLambda!57 P!6 (select (arr!601 a!13) #b00000000000000000000000000000011)))))

(declare-fun b!17415 () Bool)

(declare-fun res!13849 () Bool)

(assert (=> b!17415 (=> (not res!13849) (not e!9382))))

(assert (=> b!17415 (= res!13849 (dynLambda!57 P!6 (select (arr!601 a!13) #b00000000000000000000000000000101)))))

(declare-fun b!17416 () Bool)

(declare-fun res!13850 () Bool)

(assert (=> b!17416 (=> (not res!13850) (not e!9382))))

(assert (=> b!17416 (= res!13850 (dynLambda!57 P!6 (select (arr!601 a!13) #b00000000000000000000000000000010)))))

(declare-fun b!17417 () Bool)

(assert (=> b!17417 (= e!9382 (bvsge #b00000000000000000000000000001011 (size!601 a!13)))))

(declare-fun b!17418 () Bool)

(declare-fun res!13844 () Bool)

(assert (=> b!17418 (=> (not res!13844) (not e!9382))))

(assert (=> b!17418 (= res!13844 (dynLambda!57 P!6 (select (arr!601 a!13) #b00000000000000000000000000000110)))))

(declare-fun b!17419 () Bool)

(declare-fun res!13843 () Bool)

(assert (=> b!17419 (=> (not res!13843) (not e!9382))))

(assert (=> b!17419 (= res!13843 (dynLambda!57 P!6 (select (arr!601 a!13) #b00000000000000000000000000000100)))))

(declare-fun b!17420 () Bool)

(declare-fun res!13848 () Bool)

(assert (=> b!17420 (=> (not res!13848) (not e!9382))))

(assert (=> b!17420 (= res!13848 (dynLambda!57 P!6 (select (arr!601 a!13) #b00000000000000000000000000000111)))))

(declare-fun b!17421 () Bool)

(declare-fun res!13841 () Bool)

(assert (=> b!17421 (=> (not res!13841) (not e!9382))))

(assert (=> b!17421 (= res!13841 (dynLambda!57 P!6 (select (arr!601 a!13) #b00000000000000000000000000000001)))))

(declare-fun b!17422 () Bool)

(declare-fun res!13847 () Bool)

(assert (=> b!17422 (=> (not res!13847) (not e!9382))))

(assert (=> b!17422 (= res!13847 (dynLambda!57 P!6 (select (arr!601 a!13) #b00000000000000000000000000001001)))))

(declare-fun res!13851 () Bool)

(assert (=> start!3117 (=> (not res!13851) (not e!9382))))

(assert (=> start!3117 (= res!13851 (= (size!601 a!13) #b00000000000000000000000000010100))))

(assert (=> start!3117 e!9382))

(declare-fun array_inv!549 (array!1378) Bool)

(assert (=> start!3117 (array_inv!549 a!13)))

(assert (=> start!3117 tp!44))

(declare-fun b!17423 () Bool)

(declare-fun res!13840 () Bool)

(assert (=> b!17423 (=> (not res!13840) (not e!9382))))

(assert (=> b!17423 (= res!13840 (dynLambda!57 P!6 (select (arr!601 a!13) #b00000000000000000000000000000000)))))

(assert (= (and start!3117 res!13851) b!17423))

(assert (= (and b!17423 res!13840) b!17421))

(assert (= (and b!17421 res!13841) b!17416))

(assert (= (and b!17416 res!13850) b!17414))

(assert (= (and b!17414 res!13845) b!17419))

(assert (= (and b!17419 res!13843) b!17415))

(assert (= (and b!17415 res!13849) b!17418))

(assert (= (and b!17418 res!13844) b!17420))

(assert (= (and b!17420 res!13848) b!17412))

(assert (= (and b!17412 res!13846) b!17422))

(assert (= (and b!17422 res!13847) b!17413))

(assert (= (and b!17413 res!13842) b!17417))

(declare-fun b_lambda!8071 () Bool)

(assert (=> (not b_lambda!8071) (not b!17423)))

(declare-fun t!321 () Bool)

(declare-fun tb!131 () Bool)

(assert (=> (and start!3117 (= P!6 P!6) t!321) tb!131))

(declare-fun result!131 () Bool)

(assert (=> tb!131 (= result!131 true)))

(assert (=> b!17423 t!321))

(declare-fun b_and!161 () Bool)

(assert (= b_and!159 (and (=> t!321 result!131) b_and!161)))

(declare-fun b_lambda!8073 () Bool)

(assert (=> (not b_lambda!8073) (not b!17420)))

(declare-fun t!323 () Bool)

(declare-fun tb!133 () Bool)

(assert (=> (and start!3117 (= P!6 P!6) t!323) tb!133))

(declare-fun result!133 () Bool)

(assert (=> tb!133 (= result!133 true)))

(assert (=> b!17420 t!323))

(declare-fun b_and!163 () Bool)

(assert (= b_and!161 (and (=> t!323 result!133) b_and!163)))

(declare-fun b_lambda!8075 () Bool)

(assert (=> (not b_lambda!8075) (not b!17422)))

(declare-fun t!325 () Bool)

(declare-fun tb!135 () Bool)

(assert (=> (and start!3117 (= P!6 P!6) t!325) tb!135))

(declare-fun result!135 () Bool)

(assert (=> tb!135 (= result!135 true)))

(assert (=> b!17422 t!325))

(declare-fun b_and!165 () Bool)

(assert (= b_and!163 (and (=> t!325 result!135) b_and!165)))

(declare-fun b_lambda!8077 () Bool)

(assert (=> (not b_lambda!8077) (not b!17416)))

(declare-fun t!327 () Bool)

(declare-fun tb!137 () Bool)

(assert (=> (and start!3117 (= P!6 P!6) t!327) tb!137))

(declare-fun result!137 () Bool)

(assert (=> tb!137 (= result!137 true)))

(assert (=> b!17416 t!327))

(declare-fun b_and!167 () Bool)

(assert (= b_and!165 (and (=> t!327 result!137) b_and!167)))

(declare-fun b_lambda!8079 () Bool)

(assert (=> (not b_lambda!8079) (not b!17413)))

(declare-fun t!329 () Bool)

(declare-fun tb!139 () Bool)

(assert (=> (and start!3117 (= P!6 P!6) t!329) tb!139))

(declare-fun result!139 () Bool)

(assert (=> tb!139 (= result!139 true)))

(assert (=> b!17413 t!329))

(declare-fun b_and!169 () Bool)

(assert (= b_and!167 (and (=> t!329 result!139) b_and!169)))

(declare-fun b_lambda!8081 () Bool)

(assert (=> (not b_lambda!8081) (not b!17419)))

(declare-fun t!331 () Bool)

(declare-fun tb!141 () Bool)

(assert (=> (and start!3117 (= P!6 P!6) t!331) tb!141))

(declare-fun result!141 () Bool)

(assert (=> tb!141 (= result!141 true)))

(assert (=> b!17419 t!331))

(declare-fun b_and!171 () Bool)

(assert (= b_and!169 (and (=> t!331 result!141) b_and!171)))

(declare-fun b_lambda!8083 () Bool)

(assert (=> (not b_lambda!8083) (not b!17412)))

(declare-fun t!333 () Bool)

(declare-fun tb!143 () Bool)

(assert (=> (and start!3117 (= P!6 P!6) t!333) tb!143))

(declare-fun result!143 () Bool)

(assert (=> tb!143 (= result!143 true)))

(assert (=> b!17412 t!333))

(declare-fun b_and!173 () Bool)

(assert (= b_and!171 (and (=> t!333 result!143) b_and!173)))

(declare-fun b_lambda!8085 () Bool)

(assert (=> (not b_lambda!8085) (not b!17414)))

(declare-fun t!335 () Bool)

(declare-fun tb!145 () Bool)

(assert (=> (and start!3117 (= P!6 P!6) t!335) tb!145))

(declare-fun result!145 () Bool)

(assert (=> tb!145 (= result!145 true)))

(assert (=> b!17414 t!335))

(declare-fun b_and!175 () Bool)

(assert (= b_and!173 (and (=> t!335 result!145) b_and!175)))

(declare-fun b_lambda!8087 () Bool)

(assert (=> (not b_lambda!8087) (not b!17415)))

(declare-fun t!337 () Bool)

(declare-fun tb!147 () Bool)

(assert (=> (and start!3117 (= P!6 P!6) t!337) tb!147))

(declare-fun result!147 () Bool)

(assert (=> tb!147 (= result!147 true)))

(assert (=> b!17415 t!337))

(declare-fun b_and!177 () Bool)

(assert (= b_and!175 (and (=> t!337 result!147) b_and!177)))

(declare-fun b_lambda!8089 () Bool)

(assert (=> (not b_lambda!8089) (not b!17421)))

(declare-fun t!339 () Bool)

(declare-fun tb!149 () Bool)

(assert (=> (and start!3117 (= P!6 P!6) t!339) tb!149))

(declare-fun result!149 () Bool)

(assert (=> tb!149 (= result!149 true)))

(assert (=> b!17421 t!339))

(declare-fun b_and!179 () Bool)

(assert (= b_and!177 (and (=> t!339 result!149) b_and!179)))

(declare-fun b_lambda!8091 () Bool)

(assert (=> (not b_lambda!8091) (not b!17418)))

(declare-fun t!341 () Bool)

(declare-fun tb!151 () Bool)

(assert (=> (and start!3117 (= P!6 P!6) t!341) tb!151))

(declare-fun result!151 () Bool)

(assert (=> tb!151 (= result!151 true)))

(assert (=> b!17418 t!341))

(declare-fun b_and!181 () Bool)

(assert (= b_and!179 (and (=> t!341 result!151) b_and!181)))

(declare-fun m!27615 () Bool)

(assert (=> b!17423 m!27615))

(assert (=> b!17423 m!27615))

(declare-fun m!27617 () Bool)

(assert (=> b!17423 m!27617))

(declare-fun m!27619 () Bool)

(assert (=> b!17420 m!27619))

(assert (=> b!17420 m!27619))

(declare-fun m!27621 () Bool)

(assert (=> b!17420 m!27621))

(declare-fun m!27623 () Bool)

(assert (=> start!3117 m!27623))

(declare-fun m!27625 () Bool)

(assert (=> b!17418 m!27625))

(assert (=> b!17418 m!27625))

(declare-fun m!27627 () Bool)

(assert (=> b!17418 m!27627))

(declare-fun m!27629 () Bool)

(assert (=> b!17419 m!27629))

(assert (=> b!17419 m!27629))

(declare-fun m!27631 () Bool)

(assert (=> b!17419 m!27631))

(declare-fun m!27633 () Bool)

(assert (=> b!17416 m!27633))

(assert (=> b!17416 m!27633))

(declare-fun m!27635 () Bool)

(assert (=> b!17416 m!27635))

(declare-fun m!27637 () Bool)

(assert (=> b!17414 m!27637))

(assert (=> b!17414 m!27637))

(declare-fun m!27639 () Bool)

(assert (=> b!17414 m!27639))

(declare-fun m!27641 () Bool)

(assert (=> b!17413 m!27641))

(assert (=> b!17413 m!27641))

(declare-fun m!27643 () Bool)

(assert (=> b!17413 m!27643))

(declare-fun m!27645 () Bool)

(assert (=> b!17421 m!27645))

(assert (=> b!17421 m!27645))

(declare-fun m!27647 () Bool)

(assert (=> b!17421 m!27647))

(declare-fun m!27649 () Bool)

(assert (=> b!17415 m!27649))

(assert (=> b!17415 m!27649))

(declare-fun m!27651 () Bool)

(assert (=> b!17415 m!27651))

(declare-fun m!27653 () Bool)

(assert (=> b!17422 m!27653))

(assert (=> b!17422 m!27653))

(declare-fun m!27655 () Bool)

(assert (=> b!17422 m!27655))

(declare-fun m!27657 () Bool)

(assert (=> b!17412 m!27657))

(assert (=> b!17412 m!27657))

(declare-fun m!27659 () Bool)

(assert (=> b!17412 m!27659))

(push 1)

(assert (not b_lambda!8077))

(assert (not b_lambda!8089))

(assert (not b_lambda!8087))

(assert (not b_lambda!8075))

(assert (not b_lambda!8079))

(assert (not b_lambda!8071))

(assert b_and!181)

(assert (not b_lambda!8081))

(assert (not start!3117))

(assert (not b_lambda!8073))

(assert (not b_lambda!8091))

(assert (not b_lambda!8083))

(assert (not b_next!29))

(assert (not b_lambda!8085))

(check-sat)

(pop 1)

(push 1)

(assert b_and!181)

(assert (not b_next!29))

(check-sat)

(pop 1)

